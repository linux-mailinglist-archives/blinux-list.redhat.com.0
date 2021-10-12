Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 86B5842B014
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 01:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634080875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b15UHkaFL2kSvFnTl09NGPyhFuaEcZP+uAdIpZ/Unlo=;
	b=T6XTAhGtA/l/XUMRSp7xz0C5bzxtaO33GXDok5a+qx0kTRFMaO6C+R7x7R2ACUWI/WnHAr
	jU2LOHRRfu3TSHlTVn/Lgk6F1HVFHB859LmNrj6dZmzwz+vV6GgllbwBqYmaV98+7EW2Wn
	CyJ8/hftpbmmYXagRlfWWoPXpSoYbTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-lBZtxQK2MuuGBJ417gzCDA-1; Tue, 12 Oct 2021 19:21:12 -0400
X-MC-Unique: lBZtxQK2MuuGBJ417gzCDA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B5EA801A93;
	Tue, 12 Oct 2021 23:21:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD86A60CC9;
	Tue, 12 Oct 2021 23:21:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A7BA4E58E;
	Tue, 12 Oct 2021 23:21:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CNL08S029083 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 19:21:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CB7361112C3B; Tue, 12 Oct 2021 23:21:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C73F71112C3A
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:20:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD773800B24
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 23:20:57 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-562-h2JpOGPsOwqBsC3WN3RvOg-1; Tue, 12 Oct 2021 19:20:55 -0400
X-MC-Unique: h2JpOGPsOwqBsC3WN3RvOg-1
Received: by mail-io1-f51.google.com with SMTP id 5so698048iov.9
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 16:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=p4JojQsCNRohV1bkWCRKxDZ6HXAgFr0PDqsQyMSsJSU=;
	b=x2z5w4HyeCAMDZNOESb58uG77gpNspfAJI/Xp81OkamXyDWtkKscqmhR7M/+Uoe29v
	iwV0pnght1/Mt/hjOuiTTMg/yFDrAGvZP6A0f5tMNt9xZauV7B1btzzxzd8kXrfdHbbc
	wc5A0V0xBPgWKi9r63LoGNKEVMo4j+05rWICMaW7yoXHehgHKSDgABVCUdnJvRtKBLPe
	accqB5DCh36woivqgvNtZqllJQVzIEuWc8MkBidPJTBGrdhOX/zy/ezyAMffXcGH8GYS
	PyiTxkMnLQNuBM3R2rXtS36esynQoLurYcCOWYwJsk0EUlim21myBA7PDqqGZY0eu+gh
	9Upg==
X-Gm-Message-State: AOAM530peeaj0aZ5T0+5kEDhpHBz8RqpmnADvSdYQpvoWL8Jt0CAkHcd
	Cib+KR/w9r58QIvLNIiF5qm6d2uZHAqlmA==
X-Google-Smtp-Source: ABdhPJwyKQIYsW+YfqWl+hcF9Yxi7nJpNpDhp9CSOMjb+EpADzm9UGptQA0WzJxAC0myJofanrmMvw==
X-Received: by 2002:a05:6638:a2d:: with SMTP id
	13mr24265258jao.12.1634080854343; 
	Tue, 12 Oct 2021 16:20:54 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:84ba:35bc:71fa:90b5])
	by smtp.gmail.com with ESMTPSA id k14sm6032472ils.7.2021.10.12.16.20.53
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 16:20:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Tue, 12 Oct 2021 19:20:52 -0400
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
Message-Id: <41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19CNL08S029083
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Has anyone had problems with audio with the latest fedora 34 or even the 35 beta.  There was a bug which someone reported something that had to do with also, but perhaps this is fixed now?  I will have to give it a look and see if it is fixed or not.

Matthew



> On Oct 12, 2021, at 8:12 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> A huge +1 for Fedora MATE. I have it running on two computers here, one is not mine, and it works great. Orca comes with it, and you can run a full install after pressing alt+f2 to open the run window and then entering the word orca. Wifi generally works out of the box, though the NetworkManager applet that controls it doesn't tell you what it is. Still, you can just hold the alt and control keys and double tap the tab key to get to the top panel, then shift tab past the toggle button and press the enter key to bring up the menu that has your wifi connections. There's not much more to tell other than it's a great OS, not just for learning, but for daily use, and one of the computers in the house that is running it is even being used for gaming and live streaming. If you need to dig deeper into the guts of the system, it allows for that as well. I for one highly recommend the Fedora MATE spin.
> 
> ~Kyle
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

