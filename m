Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB09450909
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 16:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636991804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RFMFoHOgfqMPb4uTW9oHypREOZC0UzCM7t/ynaGiXYw=;
	b=dHkOLmyhSpETZPVY+3/Adxt7X7lK3JTVYfpBtk9NLE1qS9U8rsBxyvHdORFRQGxh6r7yVz
	CV+qa0XQYbQ60TuMyta3sy3v5Kyl6Gah1VasZIBEPRHVU5TJTV93SgyghIl7QmomQApuI+
	qFJWtxQyvgcGM4q7DK7LdJr5lbTvvZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-8L7StxhTN-KqIIgUzQDYQA-1; Mon, 15 Nov 2021 10:56:41 -0500
X-MC-Unique: 8L7StxhTN-KqIIgUzQDYQA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2039D9F92A;
	Mon, 15 Nov 2021 15:56:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 649D85C22B;
	Mon, 15 Nov 2021 15:56:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A27AC1819AC1;
	Mon, 15 Nov 2021 15:56:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFFuTFU026388 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 10:56:29 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4DA754010FFC; Mon, 15 Nov 2021 15:56:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C9C4010E8A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:56:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CE45811766
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 15:56:29 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-262-iUelri0jNnCIo0gcameb6Q-1; Mon, 15 Nov 2021 10:56:27 -0500
X-MC-Unique: iUelri0jNnCIo0gcameb6Q-1
Received: by mail-qt1-f179.google.com with SMTP id m25so15968075qtq.13
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 07:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=PBGGf1oull4QxCj5qhSQQxKq0sxSwO4XSKRUMnQjPu8=;
	b=UVGo980M5Hd5rmsL7h6nw7xZkaHg728irxQeRWDSXfcFM+AEWcWvPlOKm8pTAWJ5ea
	NPErF6SilZ34NZYgGVe/x6lauUhI1NtuJq6jjS5NZd+lBSSR8gbelUoT6hokm1TnavQA
	u/sHIxZ6cfuvlWMKydkw6zEcdxwIxYvLVegiIVdL0d6cmcf7oxrorPnrDSR4bbF0gql/
	3pVWDGbv8M1XWHv8Qy0+al0o0DXPgse7mMX7qIET8REGUvk2eS3DlrfVRqP+L+bMlLOd
	WogCr7Ok4RTGNJqG3Myr7rxuV5XcXLdvixnTGEA5gXHfYLAapJ3iI0YCQj8Oz0dutajJ
	DN8Q==
X-Gm-Message-State: AOAM533PIMqULy6HGjfxfsjhfvBGhLt4RxN590DoHu0MxTeOvmwGVYoF
	ViOv4h+7jpEaqbVXXKAStCejs+wnyyn10Q==
X-Google-Smtp-Source: ABdhPJyqmfAMR+qx517K2Xk2F4YQBEhYXLagNZ653wP7P6hWK9UqpDjAUF6EvB37xY2Vyk8gm1rUAw==
X-Received: by 2002:a05:622a:1990:: with SMTP id
	u16mr40898342qtc.355.1636991786341; 
	Mon, 15 Nov 2021 07:56:26 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	w10sm7582540qkp.121.2021.11.15.07.56.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 15 Nov 2021 07:56:25 -0800 (PST)
Date: Mon, 15 Nov 2021 10:56:24 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <7b5bb0f3-9f6c-9fc-798e-d29c634bc92a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


It is complicated becaus alpine has a ton of user controlled features.

When on a config. item thaht can have text entry, hit enter and put in or edit the text.  Enter again returns you to the config. list.

The e key will prompt for keeping changes and leaving the config. list.
On Sun, 14 Nov 2021, Linux for blind general discussion wrote:

> Why do they make it so complicated? Wouldn't it be easier if we are put
> on an editable screen where we can just move from field to field with
> the tab key or the arrow keys? and at the end submit or save?
>
> I will play with it and see if I could figure it out. If I could hide
> the chat and the calendar from thunderbird I would not try any other
> email applications.
>
>
> Cheers,
>
> Ibrahim
>
> On 11/14/21 6:28 PM, Linux for blind general discussion wrote:
> > When in the configuration screen, use the 'w' command to search for
> > the string "show-cursor", or the like, and hit 'space' on that.?? Once
> > the cursor is showing, you should be able to hear where you are. It is
> > like checkboxes.?? There will be an 'x' in the ones that are selected.
> >
> >
> > You won't find a field called imap server, but you will find various
> > paths, including one for inbox.?? You have to include port numbers and
> > remote pathnames.?? An example line might be:
> >
> >
> > "inboxpath={dahunt@imap.google.com:443}inbox"
> >
> >
> > With your favorite search engine, look for something like "pine
> > gmail". There are several example files on the net.?? These files are
> > human-readable and editable.?? Remember, the file in question is called
> > "~/.pinerc".?? If you want to edit this file with a gui program like
> > pluma, that will work.?? In order to have your file manager show you
> > the files with names beginning with '.', use 'ctrl+h', in a file
> > manager window.
> >
> >
> >
> > HTH,
> >
> >
> >
> > Dave?? Hunt?? <ka1cey@gmail.com>
> >
> >
> >
> > On 11/14/21 18:14, Linux for blind general discussion wrote:
> >> the smtp server etc. The problem is that moving into these fields
> >> with the arrows does not work. I get no
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

