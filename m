Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E5F6F2559
	for <lists+blinux-list@lfdr.de>; Sat, 29 Apr 2023 18:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682785719;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LuRKTI1Mfo+hfE5dsjsk2YUxD4TgkqT7/nj6YE975dA=;
	b=LBTLt/Mx81Rg9KoL4M3xgNynbOXdXCX4fZFhBVxqAALkbRoIU4erAEY4+nNZt6r70bY2Qp
	Kud74+63uLTnV8P+PpU+QysR0A6KM3QRt9rdjbDnEnqVVjLnPt/zofMZHaXBaNVk7P77j4
	XBAlpTf26tq3NrbH035WWShFvZ3dHNw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-377-G-be6J5VOtGXtclVgPxIFw-1; Sat, 29 Apr 2023 12:28:36 -0400
X-MC-Unique: G-be6J5VOtGXtclVgPxIFw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1833A29AA3BF;
	Sat, 29 Apr 2023 16:28:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C606DC15BA0;
	Sat, 29 Apr 2023 16:28:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 04B281946A49;
	Sat, 29 Apr 2023 16:28:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.87.1682783573.290936.blinux-list@redhat.com>
References: <mailman.55.1682769294.290942.blinux-list@redhat.com>
 <mailman.87.1682783573.290936.blinux-list@redhat.com>
Date: Sat, 29 Apr 2023 12:28:20 -0400
Subject: Re: Accessible tty apps
To: blinux-list@redhat.com
Message-ID: <mailman.67.1682785706.290939.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Another vote for just using the shell's built-in file management commands.

As for audio, mpg123 is a nice little player for mp3s and ogg123(part
of vorbis-tools, at least in Debian) is good for ogg vorbis and flac
files.

If you want something that can handle more formats, gst123 can play
just about anything for which a gstreamer plugin exists.

On 4/29/23, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Howdy Pavel,
>
> as for file manager, i developed an TUI File Manager "DragonFM" a year
> ago. i had accessibility in mind and it comes with most common shortcuts
> like ctrl + c / ctrl + v and so on (where ever it is allowed by terminal
> esape sequences). Almost anything is configurable.
> Maybe you wanna give a shot. i got a lot of positive feedback.
>
> as you hang around on arch you can just install it via AUR:
> https://aur.archlinux.org/packages/dragonfm-git
>
> you can check out the read me on git for features.
> github:
> https://github.com/chrys87/dragonFM
>
> I wanted to add an browser companion for dragonFM using an modern
> browser engine. but hardly lack time currently.
>
> cheers chrys
>
> Am 29.04.23 um 13:54 schrieb Linux for blind general discussion:
>> Hi,
>>
>> I decided to use testing repositories in my Arch. I now have testing,
>> community testing and gnome-testing. But at this time, something is
>> broken and gdm is unable to start Gnome session. But I am calm, I have
>> completelly speaking tty, but I will need some tty applications
>> recommendation. I want to use console, until gdm will be fixed. Can
>> you recommend me some accessible:
>>
>> file explorer
>>
>> mail client working with gmail
>>
>> maybe some audio player
>>
>> Thanks,
>>
>> Pavel
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

