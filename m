Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 37C5131DDC6
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 18:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613581199;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=6uU1GBoey1PrdsTGdgoTmHKrYvMHPe8YNym0LE+r+Pc=;
	b=X8K/aPJH4p83HLCxyYD6h6oLul7+1iOCP6alwkbT9zuFXnbNVySAvt/bafncu5ES8HVadB
	yK7cQ76gGiJ3H7GcVbBnaLEZcoTAMWXuH846z+qNbxVFHJz0Ipn/15AoH4KHZpXl7RlzYX
	mQOcyRfufb31FpukULscFLMTPLGDyYk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-322-xggb80_-O2SgMsulUcgSyA-1; Wed, 17 Feb 2021 11:59:56 -0500
X-MC-Unique: xggb80_-O2SgMsulUcgSyA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C40EA192CC44;
	Wed, 17 Feb 2021 16:59:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FC6F5C3E4;
	Wed, 17 Feb 2021 16:59:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 08B6018095CB;
	Wed, 17 Feb 2021 16:59:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGxll8001700 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:59:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4590310484A; Wed, 17 Feb 2021 16:59:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FF2E10624F
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:59:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E46F8185A7BC
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:59:44 +0000 (UTC)
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
	(sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-339-0bxD1uekNMCxMZOw3AE2nQ-1;
	Wed, 17 Feb 2021 11:59:42 -0500
X-MC-Unique: 0bxD1uekNMCxMZOw3AE2nQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1613581182; bh=/z4ib9fMjCSzt0tVlESLI3OGHW00/pXZ6R4V4b+MjxB=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=A4mtwGw9hS+kfgSh+BfgS2FFfbFldyC+T7oIMFFeyvWW76aZFeST+M0bj6bwIPSWiUGYDjt85d17n7cO1uM9b9J5oXfx7+wkMblzmIDTcNnDc+snbRqIc8xhJqxUJojjslaU+td0f4haWTRQl3R1rEJS2LVgzQxrS1KE0UgspIhA5nd9S4GV5XFSqZWZwqiAGTtrX6C23JDQSJlf7xt7XP0yB7bsgM+06pfNkogRD4bzG197rf8REY+VxoX7J6OwSdV2YUsd2xXT0WmmZ4ZbVnMI92S+TIWScEVVEn3pgM7jqfKrPa4wpqeKYlQsHlql7uO7g/SIW5XBesLxlSGWdg==
X-YMail-OSG: 01pg2XsVM1lX58Y1UYkpD1_PcTW5h4OiWijJo4NZwdA5_E4bETu7D0vhjMG4kQe
	ivBhTx4_eeTYUZMj0WxSzUVCx2xhAbbKfMqJcz.Gql.wPdFaF_Ze969SHYBM9dZHvm1NUwaavfYm
	tSXiH3ONKGPKhYNLz9L7m5qOJ3c_XO9d0C.lxbpFi.w1dCjoSu6q8MzYFS6SpJxfrlMeZ8uH.aZZ
	tP8.ZyNEeDRemK920Sb1_yQbXWJ96DecvOQ5z4.LtDViHEukdS_76kwBOpQON6aikElwoWgYnxR9
	rE1ZhkpMb7CWt1pOIBL_dEFzfXfy8yd0q0YgFhwhCZTIAgaGX6Hv.1LaZeDx6tro5OvlIIHqBOBg
	Nj_jaF3FKQuU5T8w8SYrmCWZMhyRKP4Bkg12mg_VS78M2uV3W6Jc._.AYDc7c4NZ_Qw71FwZR.8A
	31I1qFSLUEcht1gfnzItwsumaPsM4qaDDXeg.gfQ7NTLwGpAYLNdNY3542taMU9QHW3kGjoiSyLj
	vTcRB0R9cfSC1dzKyAWi7WPwAreTy4psBLDFob.x5c76lXFijMXXB38WhVG7NqIc8QSOlhcvWH5J
	t1vsTGsAwBfeeCVBljaiap4RGSwYo1QxLfE8iJ9rbn_Lq4kjoC7hwnr.ObWGdTNiLcuEdCYh8NpD
	rn4b9FE8Q3c6AWrv6Y160.OL59Phm81ozmxGP8SD_Jf0.TSrJhtNbfo1LwkmtteMvQ6etWF9DvUx
	gySMn42Li.3JJMA0hpN12PHHOqHM3jtD2VtdYvFsAiywdG1Ljhu_y_HoVAd.eD6HDi4ReVO6r5Sl
	vXORYM3inxOJQ6UUrTq17QFC3I_rlDfm71E2dtSStpjgUhawFZPggR0JoWUKWHmFbPVVCTXLBYSZ
	b8JbTJEO8dbj5EXKlcIXp9Ve01NSiBgn9utb4L.2Wkv8Zym0R_G1gWqedzWTQ2MxUV_eKVe.J.X0
	VxMMMWEwPeGLWbBqRng8Wes0.tmulT9chVosx99RcK6WOJi8ZIpn0M35qIP5uSuz76b57y5DiRPU
	dMJI4tmQ0fmp80zzSjNTf8IZ9wYXrHhleftOC8d8g8n4r1t16Cf6MFFrZCwx9WmAFi4ZQhZk5TtB
	98Gb4f1.UJsILbmT8DSCKJyBV3sylQEsCy_PgoGd1DUG.20qUwTQrWP26Esr3xyGwZ7NDw07Q4y2
	owISnNR8ozN39f3LvS9UrZVBQahjs9vr93BNrRSu7I3vlFXG6GfwwzoAKirDzrJ88rrsDf8OuYkf
	iZStWRJJ6YWDMiWY4veqqRwf8pmeFr7iEny.dzoLIKGr22MgDht9MCUSbwfcsHAvYFLjR9jznb7J
	wGPS1PC_KUpNsScnp7WCoJf5H7GORVUQysdFBB561YLipLK8kI19RaGI_zfjpnyYDrToE9BLEHI0
	1K68VdIbq3hFbTYKBDTlNWGtNoEn00C.UaGMOZ5s.3ZwDijYwjl0pv8wSiWlBjxH_BXPlalhVbcg
	736G.wCohouMUMkhReGM15A0iiafFwPULQoM.j9wwcv.ilS1VmyCgCazzMteC.9KI7NP3JqkKPV2
	6.P4_diMCASpkGEJFbtOnmFaHAnl_zSTiyLnTaoREmtzJ9qycMNXmWvQG5IrgN6SWcO1RlTK_NrN
	KmY3.3fnuHKpLKODhTn2NhsDwK17jPUepsloJGGN43rPremwGzujf1vcR93E9XVV88FmasebVipY
	RsTVN4VIdzWnKA2ez.QiaUeS21ADXp436cGBW._JCsKr1tGctinAK53OJDWLunCfYEgf1DGDWnrN
	0Cq9lbx95tnP_oVI5T5V5bjeAoo02GhVHdMc1nkv6uGp1pxDNcyVU30ZF17o7O.R9maF9s_qiY8j
	tU1V_yNaOHnu3MNL2x6tJ_ohEzu9Y.2w98Xmp0.UZTO7Y.GtIjBPmJM_6VHojr8J78qVCEqE0tAV
	ojdCHr1prg8OJKtZSuJwzZ9d78GeyLfocGBZN4bf0vA.P8P8UIim7_EFZ0sWMshybAwqQRU..CuS
	NACvGeGLT8Zktsn3gDtVhIMsGh4MDBXJfzpqDh_4fUq6JQkX5xi78KRVFdk4wNqXwMwM7hZlMIeK
	7PBmWigc7LwHs8eK2wBJ61xHrCKaHhBrX0t46K_VpFEaJWM9fK1kfJWbQSEKe8Sh.xSJBydu4PEZ
	uTYaLU.KpvhlPzgppRRqw8K1KaABfm0JMV0Rv1DpZ.VvSDv3pL21wLcsL1MU6JR9LJUQjlRX7Ony
	rwMu8LPq5bgUTAEchrHp.OwR_CTWBRGmKZ7EAQlikfi90t1At7CI-
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 17 Feb 2021 16:59:42 +0000
Received: by smtp406.mail.gq1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 4dad09b74974639fe5c15ed401806baf; 
	Wed, 17 Feb 2021 16:59:37 +0000 (UTC)
User-agent: mu4e 1.4.15; emacs 27.1
To: blinux-list@redhat.com
Subject: Starting Ubuntu Linux in Text Mode with Speech
Message-ID: <87tuqad40d.fsf@yahoo.com>
Date: Wed, 17 Feb 2021 18:59:30 +0200
MIME-Version: 1.0
References: <87tuqad40d.fsf.ref@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I am running Ubuntu Linux 20.04 for the past twelve months. However, I
am having problems when trying to set it to start in text mode with
speech. Doing:

sudo systemctl set-default multi-user.target

will boot into text mode, but then there will be no speech. So My
question is: Can we run Ubuntu in text mode with speech? For those who
successfully booted into text mode, can you please share some tips on
how I can configure my system to always run in text mode but with
speech, whether it be Speakup or Fenrir? By the way, both of these are
installed, but they are not triggered when I log in virtual console
mode.

Thanks in advance for your help,

-- 
Ishe

Pure mathematics is, in its way, the poetry of logical ideas. :
   Albert Einstein

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

