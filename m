Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 343AC6C985C
	for <lists+blinux-list@lfdr.de>; Mon, 27 Mar 2023 00:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679868153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vxGOGXSs/aCIv3W/V29nIiNQwGNJD6WvOYmuVQccazw=;
	b=LRVqVnhPupraNkJNeDRHz11bgeD8OcDxhxrrrIFkyoFAIS1BJc5TRbr4z/LAhP0Y7aMSqC
	31KT970k1WyszBF0GoFtgDfDjm+29dwVyYWM5BKjYKBH5cnB5xkQkdOKb96AQJEEuVglmK
	DMRa2vfSNvoI77nL0XDwGNRGajMHMZw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-169-NovE0J9bPn-HdU5xgFF1YA-1; Sun, 26 Mar 2023 18:02:30 -0400
X-MC-Unique: NovE0J9bPn-HdU5xgFF1YA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B673B38123A6;
	Sun, 26 Mar 2023 22:02:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7CCFC1121330;
	Sun, 26 Mar 2023 22:02:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E54319465B1;
	Sun, 26 Mar 2023 22:02:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 26 Mar 2023 17:02:12 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a Good Way of Dealing with Accidently Deleted Files?
References: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
Message-ID: <mailman.237.1679868140.2676487.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  There are two main time-periods in which you can do
something: before you delete the files and after you delete the
files.

Before you delete the files, you can do things like have a file-system
that supports fast/cheap snapshots and take snapshots every N
minutes, possibly using a snapshot-manager to take them multiple
times per hour, then keep one of those per hour, and keep one of
those per day, and one of those per week, and one of those per
month.  I use ZFS on my FreeBSD box and snapshots are essentially
free (only costing the space used for a tiny bookmark record and
anything that gets deleted).  I understand that BTRFS ("Butter FS")
has similar options.  Note that the drive will continue to fill
even if you delete things because they reside in the snapshots.  So
you have to winnow those snapshots over time.  Or create different
snapshot timetables for different datasets.  I snapshot my OS-level
folders before upgrading either my base-system or my packages, and
keep one or two of those snapshots around, but not a lengthy history
of them.  I snapshot my home directory more frequently where files
are usually added, but I have a special data-set for my Mail directory
where things get frequently added-and-deleted (so I want those
deletions to actually get freed up pretty quickly)

Alternatively, you can use some
delete-to-a-trashcan-instead-of-actually-delete tool like Trashy

https://github.com/notklaatu/trashy

calling it whatever you prefer, like "del" if that's what you want.


If you're trying to recover files *after* you've deleted them without
precautions like above in place, you're looking at a lot more
heartache and pain.  Especially if you use an encrypted drive.
There are some utilities that will scan the raw drive image (or
unencrypted drive virtual device) for certain file-type signatures.
I had impressive luck using "JPEG rescue"

https://www.ocf.berkeley.edu/~fricke/projects/jpegrescue/

to play the hero for a friend who had deleted a lot of her files.

I've also been able to scan through the raw hard-drive image for
text files (yet another reason I love plain-text for most of my
files), grepping for some known text.  If the file is binary, your
chances are a lot lower.

So I strongly recommend snapshotting (and backups to external
devices, and testing those backups).

Hopefully this gives you a couple tools in your belt.

-tim


On 2023-03-26 08:13, Linux for blind general discussion wrote:
> Hi All: After many years of impulsive mistakes on my part, as well as other
> insodents, I would like to have a better way of recovering from these. As an
> ideal solution, I would like to alias a "del" command so files are moved to
> a scratch location for 6 hours, which would be more than enough time for me
> to realize I was impulsive about wild-cards. I am in TCSH Debian SID. At
> least years ago in DOS I could run an undelete command, it would ask  for a
> first letter to fillin. Also, years ago when I was on PrimeNet, we could cd
> in to a "snapshot" directory where everything would still be around. My
> Linux expert says at 1 point we tried a similar solution of butter fs but he
> says I didn't like it as it was filling up my hard-drive. Seemingly just
> keeping deleted files around for 6 hours would be a perfect solution. We are
> also planning on upgrading hard-drives on a local backup server. Thanks so
> much in advance for suggestions.
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

