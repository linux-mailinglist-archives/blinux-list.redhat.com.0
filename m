Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6680597B86
	for <lists+blinux-list@lfdr.de>; Thu, 18 Aug 2022 04:35:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660790101;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZnW2T3J5TtgUwtQH9tuoEp2TX3WX/CS1cWHhrHYI5nU=;
	b=Jz3c2hOHukh+/93WCbUBK0MxCrv5LZyUZCyLH2RmHksMZNj2sLMTdyJBzJ+TqF3Ngq3sDk
	XjvbLKKXbIfNh1d3L+MoWWPCKqqgxBcrTmYx3QKbixbs2jUdCO1o4ESqXBkkMUu0on62xC
	ZFWCbJhwODNFuNeFDymaFt1yK8GiVzY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-160-VH-PAZllMKG0drQgJmDHbw-1; Wed, 17 Aug 2022 22:34:58 -0400
X-MC-Unique: VH-PAZllMKG0drQgJmDHbw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D35A98039B9;
	Thu, 18 Aug 2022 02:34:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 721EF4010D45;
	Thu, 18 Aug 2022 02:34:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CC86A194E00F;
	Thu, 18 Aug 2022 02:34:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 18 Aug 2022 02:34:48 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Trying to Recover Deleted Files?
References: <mailman.1939.1660785318.10502.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1939.1660785318.10502.blinux-list@redhat.com>
Message-ID: <mailman.1758.1660790093.10505.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There are two separate matters at play:

1) recovering deleted files

2) mitigating it from happening again in the future

When it comes to undeleting the files that were deleted, there are
a lot of variables at play--the file system (ext2, ext3, ext4, XFS,
JFS, ZFS, etc), whether the disk was encrypted, the underlying disk
arrangement if it's LVM, and the types of files that were deleted.

However, the most important thing is to not write anything else to
the drive until you've taken a disk image that you can operate on.
If you can, reboot into a live boot environment (such as a live CD
or live USB), and use dd(1) to make an image of your drive to another
larger drive.  Once you have that, you can operate on the drive,
secure in the knowledge that it shouldn't get any *worse*.

Some file-types have internal characteristics such as JPG image
files and there are programs like "recoverjpeg" that can scavenge
the raw sectors of a disk image and find things that have the shape
of a JPG image and recover those.  Unfortunately, MP3 files don't
seem to have a consistent "magic number" (some identifying bytes
at the beginning of the file) which makes it a bit more of a challenge
to extract the raw bits.

There are some undelete utilities, but I've had mixed success.  So
I'm afraid I don't have much good news about recovering the deleted
information.

For the mitigation aspect, I like how ZFS does it.  Snapshots are
nearly instantaneous, and only occupy as much space as the delta
from from its neighbors.  So they're storage-efficient too.  There
are some wrappers that take a snapshot every N minutes/hours/days,
and they then manage those snapshots, winnowing out older ones after
a time.  Every snapshot is available under a hidden .zfs directory
in the root zpool, making it easy to recover files.  It's still no
alternative to a backup, but it has saved me on several occasions.

Unfortunately, ZFS on Linux is not as trivial to do as it is on
FreeBSD (which is what I use as my daily driver).

That said, there are other processes that you can run that will
take regular backups of your system, either to the same drive or
to an external backup device.  So it sounds like this might be one
of your best options.

I just wish I had more encouraging word for you.

-Tim



On 2022-08-17 18:15, Linux for blind general discussion wrote:
> We interrupt this discussion to bring you a new topic.
> Hi All: Back on August 01, I ripped several streams of President Biden's
> speech on Afghanistan. I have a script to convert from mp3 to an aac.
> However, in my haste, instead of just deleting the mp3s in that directory, I
> nuked all audio files I recorded that day. I know, I need a backup strategy,
> something where any file which I nuke would endup in a temporary trash for
> like 6 hours. Usually when I make similar errors, I know rather fast.
> So, many years ago, when I was in DOS, I could type "undelete" and it would
> provide a list of files, which you fill in the first letter. I gather
> recovering files in a Debian SID system is complicated? 1 of my Linux
> experts suggested I install testdisk. Trouble is it really doesn't read well
> in speakup. Another of my experts ran it here, says I have an LVM. Seemingly
> running a df -h shows home as /dev/sda3. At this point I only need files I
> nuked from August 01. Can some1 please inform of either packages or
> sequences I can run to try-and-restore these? I suppose if I can use a
> wild-card in that directory or provide it on a commandline? Thanks so much
> in advance
> Chime
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

