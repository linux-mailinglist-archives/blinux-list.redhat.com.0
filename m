Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B8B8C2A8B24
	for <lists+blinux-list@lfdr.de>; Fri,  6 Nov 2020 01:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604621331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9e/5wb7T+0iyBSpKhr83uAGwHhAFTD8UwpVC97Du4tA=;
	b=Y7bwtsyijaCabe/0OVUV3qILuREJcKHK0Hqwswf4M+GqnNxMJ5//ZJM05v9vV8YPP5HmF/
	pFLoe40eA1vNoEtAvAf1BAc+UtiG5IHKrMJscnszOyInhgMoEm59MXFYUKShwbi/TMYCgD
	Kw1mPDMzgHLoF3dzJILtUMNvbCtyPdg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-yws3Pm0DOr2VT4AWTm-PdA-1; Thu, 05 Nov 2020 19:08:49 -0500
X-MC-Unique: yws3Pm0DOr2VT4AWTm-PdA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 426A31006CA2;
	Fri,  6 Nov 2020 00:08:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B46D96EF73;
	Fri,  6 Nov 2020 00:08:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63AFD58129;
	Fri,  6 Nov 2020 00:08:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A608Zs9020340 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Nov 2020 19:08:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 299E511753FC; Fri,  6 Nov 2020 00:08:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25BF51175404
	for <blinux-list@redhat.com>; Fri,  6 Nov 2020 00:08:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 960178007D9
	for <blinux-list@redhat.com>; Fri,  6 Nov 2020 00:08:32 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-32-B88c5NsTNSGPjxS8EYvhYA-1; Thu, 05 Nov 2020 19:08:30 -0500
X-MC-Unique: B88c5NsTNSGPjxS8EYvhYA-1
Received: by mail-ot1-f50.google.com with SMTP id f16so3065562otl.11
	for <blinux-list@redhat.com>; Thu, 05 Nov 2020 16:08:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=ZO+aDjqb5ZEdf1A+HUcMpp4QwxWQeqHzNZ4olqsBf1U=;
	b=li6dFlHJzHAJGkHMYckSPvXWI4AD9uGi3ELYO+7f9bTdCUsTI3fVC8qGQDYzIw5AEU
	ZwFy2s78QeErRMpVEsJrBJ/3YA/OF8ws/A9hK94351sqUnG6E2RfwKqEjAYMh+IVi2zw
	Rr4LL1cGTGyWNE2XVyeyxaj8JWDeLv4GoDvA2KkGDwGYLHgxkR13Z6RLsv/snie6bvu4
	9VHSMtnmudJAOF1eaziRlxP2IZTb7jAKNVmdrytAKxyseVxW0FTURXfPqeRJPyJJLsa9
	lOJvFs2suApiqt8i9v3h7K3adRp8bg8O9S9QVnv20x0ACdMBYHL38A7J/BijlljCSXZg
	rQOQ==
X-Gm-Message-State: AOAM531MhakgS7RV78fXsvkhPHBKNDEPWmm/ez/vFSufXY3qo4d66ZpQ
	KPUHxxmRGWuZmdT3YEfolArCD3wvdhAiBg==
X-Google-Smtp-Source: ABdhPJy4RTGYF18Rf3dNUDCHnTEFM5tJiXBR77WtFvYPcvS3FLCtRRhyTQemuybEZczALh/Fw93UkQ==
X-Received: by 2002:a9d:5547:: with SMTP id h7mr3549186oti.248.1604621309245; 
	Thu, 05 Nov 2020 16:08:29 -0800 (PST)
Received: from ?IPv6:2601:3c2:8200:9360:499b:b782:873f:abd4?
	([2601:3c2:8200:9360:499b:b782:873f:abd4])
	by smtp.gmail.com with ESMTPSA id 85sm769381oie.30.2020.11.05.16.08.27
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Nov 2020 16:08:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: Re: arch linux and broadcom
Date: Thu, 5 Nov 2020 18:08:26 -0600
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
	<25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
	<3CA05D86-33B3-4781-A7E4-ABC3888B131E@gmail.com>
	<45711af3-5f7e-e420-b34e-48867e9f1e73@gmail.com>
	<81F35FE2-70DA-49E6-ADC9-3FBE0ECE0811@gmail.com>
	<b45ce6b8-b401-404c-618a-4ca60653e313@gmail.com>
	<DB0DA0B5-8B36-4A87-946C-5A199459B675@gmail.com>
	<9a624111-d302-090d-2de1-cf19db0d44ca@gmail.com>
	<eee49b61-350f-e13b-f18b-06914680b795@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <eee49b61-350f-e13b-f18b-06914680b795@gmail.com>
Message-Id: <34C421AB-100B-40A8-9E89-AF50983F4A41@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A608Zs9020340
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did I write the command correctly with two greater than signs, or should I have used the verticle bar?

> On Nov 5, 2020, at 3:11 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> The script command would require editing the file, as it passes all information, and you have to end it. The suggested command just piping lspci out to the file will work much better in this case.
> 
> ~Kyle
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

