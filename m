Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2E3446FCC
	for <lists+blinux-list@lfdr.de>; Sat,  6 Nov 2021 19:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636222804;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=16048vSOdvE5xuH69tn6AE2p9tfFmGPtKYzKFq4/67s=;
	b=ixXcDijln+bPGtNvfLst6i66L3FblyRbTsE2zpUj+ukjmvZpD4g4wHgJ8tqX91AsVu21e1
	oTlB8jlGT+DoAlbb6AWr2YAT4wBZ9BcIgNb3jaCBUAiLRsgqZGB5mtAVsC2DsLrcWxeu1X
	hoTC5KbTTchXLTNncK8sTQMbex2Yp+M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-557-AhPMxlmcOWWA-_u3Be3iQg-1; Sat, 06 Nov 2021 14:20:00 -0400
X-MC-Unique: AhPMxlmcOWWA-_u3Be3iQg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD2C2100D681;
	Sat,  6 Nov 2021 18:19:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5402102AE41;
	Sat,  6 Nov 2021 18:19:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1560C4EA2F;
	Sat,  6 Nov 2021 18:19:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A6IIJjZ014303 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 14:18:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D4B9151DC; Sat,  6 Nov 2021 18:18:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF14D51E3
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 18:18:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B44ED8061DD
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 18:18:19 +0000 (UTC)
Received: from sonic309-21.consmr.mail.gq1.yahoo.com
	(sonic309-21.consmr.mail.gq1.yahoo.com [98.137.65.147]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-542-_pOXTKRROGSSAm3_F_s7pg-1;
	Sat, 06 Nov 2021 12:15:01 -0400
X-MC-Unique: _pOXTKRROGSSAm3_F_s7pg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1636215300; bh=Fe0YymtBqWnxemcDboNFD0Moj+xVjNByrWEguccX54P=;
	h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
	b=niFJEhWxvc0ZkUksaZgZxz8VINkRUFSj7ZGLM5kkIDiVMfoT6Z3ucgD4Hm4zGeAvF4kknFQ9ditKowSszJuTiOZqdFvuJE5TeL1Ld7WfaB6fgJe1Cq52tQfERqY7GaOscOy4JDKYKYSBm6Uo7MDlh0GJhR4u5KZ2LcrWINHnq+n1DA94jaGFcZjv1IVKMhPSXwbSNBSUbEpSQ2zV51BYyKUWkow8Ud65VM/KiRnuFRpXDZWVTGSAGPoWMjsbvKVH5LK7qsInI7BzRp67+D1WqCm+zDjlbbfETCJEKZ1YyoEVDXsTpUZgY0xptZhADd7+JlouYFNhqDigtbHjjgLmrQ==
X-YMail-OSG: 7ssDG6sVM1nJ0KG.ZQeOeKu4BTbc1d8lSgMvy3OxWxQv7RES3EByY5TP_FSoqdF
	4Mz8erMJXMJiSuzraX2NvC517Dp6BvlVpjmG4nL5mz4ypeBCij6vtxnSL_.CoYtVdLI2IXegsTtr
	X6nPM1SGmSKuMB.gWmfS7Q7HWbseOc8MbUbnNwpYh9Mr3mU8aSG0dBsuTKt25eUhS7guJrA9vfKa
	6Faew3GG9R1M4vSKuRrZ0FtOqHzz46xEgj0pUDUsLAVZja_eFwXZmxdui5DRRHSXzO8y8XHHlS4d
	0qQ3ho_Gy4_wLIQ9c.nKKLHZbDGOww7LXMEfa1MHD20GxCYWHCa0imzmX0umWEAhv4GvwbwgAAqA
	_Xm6bJiKmbYDN1lQF_RNYQayuswF3sqgEVqVntzb2MX7J.8yVxaAyQZlbwDdk5CRTxsUa7dAoccW
	Y8__oZaVOaG6n_TTbaYMC7hXvQiUYHz1COXUyrugr9E4ERouXQ1Btq92Jp.6lT7QafPJ4UH2p4mM
	esVFyEnOAAcB_iHCa66Y4JnjGMGbBaKRnIp6.ZSV_6NCxHJudzN4FmHQ0Z24KQK9aRLVswtiqTOs
	RpSpZdBV_I2Tsgt4.OMGTwLKq_njsOjZ32CMhWvuVl0Di3xjKbdifKGE5NXHhJvPQV1PsphFElAb
	mk6VyfuZGTIdFHLkdb2l1bNtHJWb903aHgchp9GJldyosEpPrZzYgG3n8gaEhjwJ.53tlmMyN2FK
	RjW88XOhv8Ls6D9jvXGsW_fFHQvKTnKJtVkP_LqOV5ebLGLBwGhaF9CsKZyem.HejDhSv9Zn0V9k
	xTfzqUOdEK2f1SNxfLzrpTqQvSTVBHO5w.X15v0H1TGvPgq3eWBQWMH9_uoT5XFd7.o_pOIhyr4t
	0zG8cgtWsn3So9vvttq..Pbn.SRbL1GklHhJjCBVa2UiW4NXSLXtRt.9xziFRF9EhIurUGt7qVtA
	MkCWF30zSBHFJbesL8AJSNA_5KDLaEuRab6zTqOhUYSCvm8cqEhDRP3CbjEDzv6Qm8zkInCEI9Ut
	Cfzqlykha5Fs.LqkLaxBtslU2.HclaZhtVxjR74aKVQsAh8vRfL0LHptNS7N..GZRgVaCpLMza._
	M3Wc.CUBck0jx3dz6I0LqSWfQC0WpFukAcFJVZRD9qRdgNkba2FFVVmwisUVgAo3h.wK9WzVnrQ6
	xAjUEen8WVzrN5rzjAkXBhFuAe4eWtDgnFrTIGX3EuWYp4SAWk6ueFtQA23.WdfxoLgx8BmLc51V
	mRvV.twWXVZaON.d1JvD0cUMT44FBJ3sVAiaFp3pVz7U13SV5bNFJu9YKvEOFg_7hs4.UgSK0571
	h_EfpClJOWopxQvNxtcXjlm0_ILEKB6vtjrrQEY1pmCVI8kLIhXMDSImUWb_aDprFTje.7Le7_3s
	yqybz7kE77_jd4qsPeXfVEfcGR49NeTWfkNHyWQ05ehsoEg3FGo.rf.LV2BQPcIBL3GEMUzBgQEw
	qxQDzZlsB8khQq4DwkrF5oUu28Q0onQMV.L0GkqgFeL69SDjWUpROpMzz6IkvgYl2Vhqs4b9ksHc
	sANOptWSG4TBcB658ACPwC4s9eLK2g4q4CSgiQ7Km28CLcMnn7hLJZmgziSi2KNjLQWPBcMsTTIt
	4SApN6_al05yD5tWZYmTC4gN4.X549y9lBtTHX9qVqznlv8fKTHUlaScM0Dopxp4oDJiYUBQhrYt
	pWidoFxA5.fsc5LJAqRrXHT8zNQCNNIUQZiU5Yd5rUb6HYm5eBnjJ7x7TLZS14QUEtB0gWEhASJ9
	4ccjNNqyUxrUjPZQP1pe8hoyc_Qb54xefbgeSVVH2hVc_o8WslG8rIPiMm5jTCTEwLIiwWsCY5gD
	HVWChSGS.V_2d6xz6Cuf0PYl2LHbIxCTJo7j8nu0Ls0A6k97oVeQLkqGurM5mhmxMlk4KIApsiq6
	iGkf1ZX6gr4Cht2OLt1wwYcKzhV3Vq0pBquTLaE6WD.Yh6.NeN3aaCVCssX1vtyAXUvjlrxmL_rD
	RM.LUrPS8D27_4yEh21LGEN8QH60HIwxW4494TNdg9zy2xNzC3UDn5SsPwWj6UOXSMGifYtmnp5W
	3pOMvFforJz6MZUKExWKat1Ppyf1s3E5U7X7kM8Y5IBoDsn8DlilLvdxNk.kxyFs94fWl0d2k7Zu
	SgZmzaJG5GVnlYQaLR9TGKa.cY8dxL8P6MXCzL8LwTtRzRSqdqhrPl5DNBo99PG6tEaD_kX_1JVv
	lji27JnUcbLhsahwYuilIfOyM6E5br6OEVt.9WZDGEnmqI7Jjw9E-
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.gq1.yahoo.com with HTTP;
	Sat, 6 Nov 2021 16:15:00 +0000
Received: by kubenode538.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID c681ece8d5323b79c89197b1b591ab59; 
	Sat, 06 Nov 2021 16:14:54 +0000 (UTC)
Subject: Re: anonymous postings
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
	<99C93103-154A-4522-A690-81731398338A@cfcl.com>
	<20211104074222.44ad2c12@bigbox.attlocal.net>
	<BE4511BD-CC0D-4215-A136-31FFDA52AE99@cfcl.com>
Message-ID: <61b66f46-ddf6-b11f-3ba2-6866552473f3@verizon.net>
Date: Sat, 6 Nov 2021 12:14:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <BE4511BD-CC0D-4215-A136-31FFDA52AE99@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Rich, I appreciate your research and hope there's a fix down the road.


Al Sten-Clanton


On 11/5/21 6:07 PM, Linux for blind general discussion wrote:
>> On Nov 4, 2021, at 05:42, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> Tim here.  You're not the only one frustrated by the anonymous postings.
> My take is that it's mostly a technological problem.  Most of the folks posting aren't really trying to be anonymous; they just forget to sign their messages because in most lists this isn't necessary.  So, I've done a bit of digging for a solution; early details follow...
>
> This list is running on Mailman 2.1.12, which is rather ancient (the current 2.1.x release is 2.1.35).  Complicating matters somewhat, Mailman 2.1.x runs on Python 2, which is going away.  Consequently, most of the development effort is being spent on Mailman 3, which runs on Python 3.
>
> At some point it would probably make sense to upgrade to a current version of Mailman.  However, this could be quite a hassle (different base language, code base, configuration file syntax, etc.)
>
> And, in any event, neither branch of Mailman appears to provide any way to identify posters by name without revealing their email addresses.  I have posted issues on both branches; I'll report back if and when I hear anything promising.
>
> - Rich Morin
>
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

