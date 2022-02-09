Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F6F4AF453
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 15:45:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644417912;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bCysAdtEEM3GM3dDprT2PqGZS/SHkdf+UtlajX5kKMA=;
	b=bjXtm320g6r5lvSim04VKi+J+Mamac0bQ783qF5g1B5gmVUuYL8xu+sbUtborV8U3l+rsL
	YxLRQ7zZLWrznkto253I0KNiOOgAZBl4M+xRy5A1QqCSNvyehpMQ6xqRvRHkbRB6773QAF
	IUMYCiW1JK/Bv06E/Td0cDmsKQnlvE4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-52-_ktzVty3PHSu9ICg_00DjA-1; Wed, 09 Feb 2022 09:45:09 -0500
X-MC-Unique: _ktzVty3PHSu9ICg_00DjA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00F8B190D343;
	Wed,  9 Feb 2022 14:45:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72E8E79536;
	Wed,  9 Feb 2022 14:45:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 490FE1802FE8;
	Wed,  9 Feb 2022 14:45:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219EgRU8001514 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 09:42:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EE46740F9D6C; Wed,  9 Feb 2022 14:42:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9E8640F9D6B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:42:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D139985A5BE
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 14:42:26 +0000 (UTC)
Received: from sonic313-13.consmr.mail.bf2.yahoo.com
	(sonic313-13.consmr.mail.bf2.yahoo.com [74.6.133.123]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-673-UlcIBa20P3CzexluLqUl-A-1; Wed, 09 Feb 2022 09:42:25 -0500
X-MC-Unique: UlcIBa20P3CzexluLqUl-A-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1644417744; bh=ehNYV44MFu7xz1TBsDde1YIPqnvFzK70P8i3REpb+e/=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=Uzv8wgR9mWuWLoWWLcehHm20c5Djjgvz2fs3uN6yBDWpdBeKMvcKbTqNNkPywYrzu5Dma9hGVqySuD1+OSYPVNYIa/jkDCpml7acoGwYpd3buFIRjmFF1qRAjwjN2uqindem7Ow+x2tVMrcPbKVx+hfnrHuTHaRv9a0eyxQ+b02w8j/pFE9uFmORr3R0QhtoXvBt2k8oi7d5T0Fbp1QrxFbnW4W25rHrDld5TjrM/AWQQhaOJFBLFkipuNPmSPEB4pZ+1r9kkl80fNGKHZAhtncJgXS++9QcR6uaS6fvMXzDns+hRmhZ1+UAiOOtsb7IhHsss0MsXOPKCe1kfQyyug==
X-YMail-OSG: RodJ384VM1mEvHVvCJJoY8kChwTTa7yGiczVZSRptzS54rEElWsQrW4yaap8qQW
	BW5eFuNQcLbNJxfg3k2pFC_w7px12K0J.08WxJAKYDy_A6QBTBHUb2gApXmav7QFf2K1h3wBFick
	7Oc8b5KVlFt9I6Q44aYt.QX7vwnVNiKtkvoak.OCB9uYUEfv51VgWT.yZd6dzBnleULGQiQNMevZ
	JrcQKG6RKXgbtcngSOlNk8RiqvvqO05Cz7IScrIbhAtZ7TvZZefXySaNefmu8CLyZ8etd_f9mfRD
	kXlE1pACxo5QdiqUUAmnbZqcKzMaHwreFIAMznGQr0xKX.cbxSI_4G8yWrsnPeoMGOYWCkIjkBFZ
	riKiLTPeTgbdBaLwLm4eOo2EbrF.3j7wvPv5ke6EG3JFDmiChTKSxNsXh3Rbl9NGIqOuvYz.Jx5G
	6A3GSPItWu9yfL1LbAzaLkCFPgBPhyLwzxrTRe.yDlEDqAfNV2lCUVwoe2nrK31s0VvyfEE_qmzW
	HeML2_1bXlcGhI5WeLNBd3EPqwNZfhlUplydxrSufja9nJhS2PxUeeJyRaICej7MQabfrM_lIlTD
	55qqsDugls1339Zn35Nt4KTvrEohycqImebrOYUeYitqOX69LyH10B.soC5rXclM1p0oQ2CUWf.d
	aMvhz9UVL3laLyb_fXfmlTLHRnM1tG3hWo_3lfs.XkDNL.40JPSA1aYInTMdyrb5Vuv62b.m0EuR
	8Y4iALuHmc8jKxBp22R0ivYCL0WNgBMIUeGYonm1br6xpdnCbD_XbbzdIIbwPjK2Ja7Bf05M5LoC
	DnuN9ETY9VD0dhw79GON3lPxH7QHIt992BEz22QpGBFI8L9ZjbIV0BblaoGQ9FlktUtn8uoxvKOq
	raK7wgK0nGPhqlv21r9sD2oRAUkHw5_RxsKFBe.uxTnRwef5xFHJYmURDYioL_B0Vp0mhOgLQp_D
	WlSQxv2QrA7e_Mwhe2tsg0wT05NQ6bV7URCYrLBcMbG_3qrjzB_A4dHhA9tgNZ6RiJrNZ._ANjm1
	6r4AFjhCKruClOQ9UZqn2EBgNF_w67CS9tu2AMbq7BU9QD_WVCbbO5DtIFBH_iHG_FFFlSCi3HI6
	7wlVjedEJj9B06t9d6xUYAkUaNhsBy_A1ZF4meyfUmUc8Pr3h.8b4PcPukc9Yqsy1A8FLU9w5HHZ
	Pzgu1NGU_VBcAnxE4pA9fIZgXwxBuL9.cvREoBayUAePk3y1VVwbDDFhzYd8l2AyYyVPb.c7OvCy
	b.JoHpHRqpUT9DLJ6IR3AX4rDqHsYF4ctU.N84deqtQFVF1q5EYGasvrm.ZwYzQpxMuPblKYBd.C
	pRDTiR0YyDgAiHuHeoDFa0FBQ9z6a7lK2LbqVjWt8ymWb4Z0a7SRydAl5k8J6Yv3eS7RQTddQ_5d
	NaGSpEDf0b.fJexW36uOGr.4fh94JDWR1_qoH8Jm3XLAYs4dA750MSxdEZpCqWj5JAS9hvPbrrW9
	vVm9at3vZPvIZqk6l5Y4i5HiIqus7sSZ4ZSjDftEQk4jwk3U8CrSniM6gyzUeguYuf9Jchzas48k
	w3M5rg8BLaiGu4xSQkVDlcrAIDb94yUHBXfGlC4Bbu3J3.X1gV24nl4OMblYbV7oZxwuA_SER2VE
	xcV76uzwIeIF9jZXNwT6.VFuK1ZaiOMMbemtqPprVkPTUyk9DigavhSWgGS65COTOWNKLXVYPQvy
	PwMyh63_GqqBhBcowvp7RtK7Q5T9n5bawgFmQCks5EXM8SP0qPA4pOmnWttLQtC7gQWkCNjEbBts
	YiaMQa3V9_pmTyeM90Wa4eCkdcfQSg6dpNkBKd4ZZWmYp2gL3U9ONAb6UIEAQ7T8IV294SBkmztE
	WTOZtSyheY9Nz5sUjR9KucYO7_TY6OlzixvjGIyzKFua8PdOBvOIbhQGWoy49DyZacwr.x27kLfL
	oHXt9unKLCy3tlhwjBE4sGJ3vcO32OzcfNmWfxNj2Q9duLBFc.Ts3FpOoOL.nGLN_46TQ2xoAtYf
	hUo4XV_WijNexawH4lMjVJtPH3s3_AZTmTywZ.mfEkPdgzAy4AMOGIbvb2DSH7OuRtlUZYsgNT_7
	73t0fJ6uF.0O_JR36b1wtHHGpkyM8IaE1lRItCKkJpkhmQVCe6LFVnoJoIeptow--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 9 Feb 2022 14:42:24 +0000
Received: by kubenode520.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 504599caae440185e69dbb89c1063b16; 
	Wed, 09 Feb 2022 14:42:22 +0000 (UTC)
References: <20220209.123818.520.13@[192.168.1.100]>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: regex help
Date: Wed, 09 Feb 2022 16:40:17 +0200
In-reply-to: <20220209.123818.520.13@[192.168.1.100]>
Message-ID: <87ee4cdrvs.fsf@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Try Thunar. It has a bulk renamer tool that can do just that. You 
simply
choose its Search and Replace option and tick on REGEX to 
accomplish
what you are looking for.

Cheers,


On Wed, Feb  9, 2022 at 06:38  Linux for blind general discussion 
<blinux-list@redhat.com> wrote:
> I want to create a regex that will look for single letters 
> followed by a dot. This is for porpoises of file renaming. For 
> example.
> J. S. Smith - Become an Evil Dictator- A Step by Step Guide.txt
> Arthur A. C. Johnson - How to Win Minions and Overthrow 
> Governments.txt
>
> The regex should look for and remove the dots. So the file names 
> end up being:
> J S Smith - Become an Evil Dictator- A Step by Step Guide.txt
> Arthur A C Johnson - How to Win Minions and Overthrow 
> Governments.txt
>
> Is it possible to craft a regex to just find all single letters,
> followed by a dot? What file renamer is the best one to use for 
> this?
> The one I currently use is brename
> https://github.com/shenwei356/brename
> but if there is a better tool, would love to know it.
> Thanks.
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


-- 
Good people do not need laws to tell them to act responsibly, 
while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

