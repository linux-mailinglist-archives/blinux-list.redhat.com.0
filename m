Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B849E6B83D4
	for <lists+blinux-list@lfdr.de>; Mon, 13 Mar 2023 22:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678742080;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=a2R6CznGFX5XFV8a8z7e5ypEDj+0f/dpxNgI+Oj84Uk=;
	b=CS4CDbnKyexWMC2v6XDv5dhMYFb3IXkEyf9n0VJLkEKeSGBhwf3yiM5Itt14tUuDp7s1gp
	H8S60xztyMp2sT7U+NGgA7is/8RvYQal+8uj9CCe6uFqv/0959Agh6DqtbnmS4AlW/B3Ly
	RpzB+RbyEKuvWdcHymDR6pFlPk3LG1o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-647-KEixZ9eZNWmZ-7kvQcFRig-1; Mon, 13 Mar 2023 17:14:39 -0400
X-MC-Unique: KEixZ9eZNWmZ-7kvQcFRig-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 019151C08782;
	Mon, 13 Mar 2023 21:14:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8BE5F40CFD40;
	Mon, 13 Mar 2023 21:14:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 918AA19465A8;
	Mon, 13 Mar 2023 21:14:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: colemak keyboard layout
Date: Mon, 13 Mar 2023 15:53:20 -0500
References: <mailman.685.1678733816.3486284.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.685.1678733816.3486284.blinux-list@redhat.com>
Message-ID: <mailman.662.1678742070.3486285.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I tried adding to .xinitrc the line
setxkbmap -layout colemak
Then restarted.
The g u i still uses qwerty.

> On Mar 13, 2023, at 13:56, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> On an arch box, I used
> sudo localectl set-keymap colemak
> and that put the console in to colemak.
> But when running nodm with i3 
> I get qwerty.
> How may I change all to colemak?
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

