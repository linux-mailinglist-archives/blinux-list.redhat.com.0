Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 74FEA2F70E5
	for <lists+blinux-list@lfdr.de>; Fri, 15 Jan 2021 04:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610680923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mo55TnV+NHIBcNWOs6th/+cK3E8P1f3GJ/SIm4PJniA=;
	b=daLAw/MpzZFAzyaJ8GDzi+XgWlTSupBbo1OAbvX58zsO0JmaL4jSUOHfHmimwMh9GLlsgQ
	A/7c/CfDhuIunvWDxNbchhDxw6pnmUS7c1iVPGo8O2SRPOcANDiV6pIw1R4T22n3QFBDe4
	rA/Y6YOWp7PzeQvwsSU4oFK/4m6GLrQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-31Zk1ayvPwiJ0Z0j5geekQ-1; Thu, 14 Jan 2021 22:22:01 -0500
X-MC-Unique: 31Zk1ayvPwiJ0Z0j5geekQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC360C291;
	Fri, 15 Jan 2021 03:21:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 268D56F7E7;
	Fri, 15 Jan 2021 03:21:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 18EFD4BB7B;
	Fri, 15 Jan 2021 03:21:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10F3LjfS004915 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Jan 2021 22:21:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0D7A6EE37D; Fri, 15 Jan 2021 03:21:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 06F30EE38C
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 03:21:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8DB78007D9
	for <blinux-list@redhat.com>; Fri, 15 Jan 2021 03:21:42 +0000 (UTC)
Received: from sonic306-22.consmr.mail.ne1.yahoo.com
	(sonic306-22.consmr.mail.ne1.yahoo.com [66.163.189.84]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-211-oSrshxcpO0arE91Z1hljLw-1;
	Thu, 14 Jan 2021 22:21:40 -0500
X-MC-Unique: oSrshxcpO0arE91Z1hljLw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1610680900; bh=58lJMRgWzvL1jrSP+xlNgBQQN7Se5UzNvZe0HWYh6D1=;
	h=From:To:Subject:Date:From:Subject:Reply-To;
	b=Jffep6hwL3pgCImPIf4rCtigg3SAiC15Etyx+ym0EtBeX4Nx1nP3cL5B3sBKnMZkxEJk0GSNNAoBxOZptznC09k979s2++D/A7pqbJYjNThSo1F8sTcX4kXDZn54mpqkXwAJTZISL+mNLzjAaqc0rTCb7TAi9obtSe96GMHb0AfNKUHJKrI7DXrBinxh6tjmcIor3NqmIMjWnT3X8OmBH+6P06/6AMRkovSvDjF8V3sxp+Jal42H9dFF0XDmCQ+urJLwBfQ+2YHc+i5adw6HjpLunT++vvTBADMdpXTy9yZMHeRc6Q8M0Pd9hfN4CCaNMGNJw+2+j8bzLmJs3kZuOQ==
X-YMail-OSG: .hAO39oVM1kBMbtKybl59TRAu7XDX3Q1tQcVaaTHL1DHoR9ge1HvzB.a0eMZDvb
	6nU6amd8fwaOSArVghuZj9GVJ.g.3NGCeMOluc2vjRe0I8BuAS6Zkr_3AtX9VObuSyjmNXPOEeIk
	PT9MgWK19djfmcxoq12jpbdQlDJ0bxAhaL8rAWuViDvdzwSX8cUfKuH2RTzjuFZ33XQyLhne..Ws
	zH_ar5hjEv7Nvkz3diElJW7V14omHNj3Y1BIPtESDxJUp9AXrwhy_z9JHpi7KYuBB5txubybuw0V
	H9LiWJloN10aojqB1fGdemjwgn.vsbdKMdy4PsHrUacfsWE6x3q2qURin1fJ4fYEPafO_QG4LhMh
	VNRMCspTj0fe_gktzT5d7eLhH5PbDkynZWTxEz5iBdMvfMkNqwWkT8ybVGm7WrHblapI5UbJ4Z_q
	f2X3GAIDPsbF3mDY9YIk6a9j47XlGXEOBe3I3GbPYsuxUobKEqKDH6feUSD4eWsktc9J__2mlrvp
	dlbd2STONSqD.7XoxhFPLCH2Lou29muVuE8EkTvjCnnLIU4bVeqOR6JBIIf.7styRwa4fuKDAJuK
	t6StEApc70RexX_5coXMfY2U9ly2rSfPSU0Pqth.XQ0toKOm9wo4H0ncjlvvA7zWYGkQI8x7uODa
	ehvgKp44m9RI8Sdp730meICrUvSQCTPBFqzd5JbmWIcwRLgx7uvaGopZW8gHLxfCUPon8GoRN1WI
	3Scc0H.NXwy9cFiLHe8KdLZK6dm29.12MqfzFrs._ThOxFwojzcRN5AsEBWUyG5A8uckPTfFmfLE
	OwrDXqvDaVTKHpClE9oy35EDwI9cJpykarqYUULeXy6xIZtJuGwaIrYaOd03m7Urjxldnk1tpvDZ
	WGRTNK1J4i_bwJfjyjMqPSvYa5OxcmKtME4bDo9JVRQ6zMC_SEyUqVGH0_jvcAoAs8jbXljAEvWW
	5KkFOMfHOGuVn7lYS9ZHwP11J5VJwQepM4hcrwtsiPz93XllH2i7raHtE5uFRRUi74ryto41He4U
	Ks1zp8iVXILtdmnlmk_wFQW_0ewIVfN1k4KJzQO5TuxWCPz.ug7RLj4h9PjYeb8jPJ6xzfgwp_Bw
	nunNsKg0U4WC5W_3c.ybMdC46bu8U0hHfAtzW9fbwWvuHUkyt5R5RoQfr232V2nSP_hB3fl9sFcL
	KAikjoMBACjvLegj1u2Vy7qOgE0_zlnWCfR1r0xSGRXCaWiIFbecvQhbwFuzyohmya1dxBZwa3_a
	81xlaNpd0zaqd4tR4w8x.yJYm6bHG3DHFMlyyIpI90Ccyt_C_HF5cs1teIqfC6eRQ85n7uBqNKQr
	ZWaINoeDa5S3TP7WtGVgiw_f8PfkufrErJfZKg_KjqAai02XOh11rVOP9PBu7cf8EQJ3keu8Fby7
	.w6bTjw3t1Td8cHOFOj0mEmvZNXNhfZv0NS7n74lYIXWQNe3tBinEvMTOMTgtq2YwK1dsWr6AyOf
	zDmW1BjKGs_Jviq2h5sN9FTi_8eXiKQ2MvL9WXDAPEJ6mcnm4ll5R0aI3zN6yeEyNZVTxuk_J1y5
	p2AY.eJcPZGiBslb6Q_D9SFNdpMeUTaR_MDt87pUR7mE9KCI7SNAsU14p7ADM9GPRKWJNW3wXJHA
	aGg8QiRCiMab_F9xDbZ.1nGSesw20QtZmG4e3pPt3fmtEuynxhponB0aUZ4BUdK8hdQYpumL5ETn
	F5HCHraM_WzuidoOTVOWJwJX3lveYS6gKKNP6OFVDUvpkFoH9y8wuUDMuakgg7JPCPPb.xuCulay
	u0CcT94hxpcg9r4InmKCTFQtJV8.jW4PZbmaSriYbMHbXZj7BESGCuFxw86eMlwUZ1GuVZgzMMCd
	bz.O3TrXcrv1GIScfsSRA6vMMhKli.O.6pPbVX5WjOhK3Nuy4U77_6XtNjFu1HI85Wmbfg11x4rX
	K2GZOnfANuvdrqPeLiZ_tHEAlglCZ5ecl6WIe_jqWbhz4mWXcgiPLMYu7LBYD6ftppgd2yeR5JvS
	wfLNV_zbM1kBPOSRqhKHwbVvumeBa97nSqIsEfHPIAD.LikAcam049jisJ4NoOa1hgPvLpcJQ4pm
	nedr81OSiC2K5qPyaQiBmnJYGvMeccVqgh7f4g8GQwJy52Ibz.Cpw1nviXhXzwDgY5NGqeuVM4F8
	y07BY2J7BcqnlI4ebR8Vk5D.vTzxRvBUvVqoiZq8XjMhSwy6HrHYIix5_zhM9wTSZ4mAHVSpX._c
	iRwe1lhc3mO5CczAXaFkkIwE0LNFTjDBys2esfbvhTpJ.G5VxMRCVc8ikWLz1gIuEV1mm0mW8U1p
	Qu.DDg3kqsrTUe3OWO9TcMh8uT694PmCnzsXg6OnHwD1d_ZxTEo3q0vZ80bw4I_zWLEVdMIO83zq
	50MRB83Dk.qgfe1nuGwtwt7aXfgBnYk6tlRmNfIvR55JL4ETEirxJ00Y65VoI6g5bIB3NcH1wvRw
	0kUenq_2EtqOjOM8-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.ne1.yahoo.com with HTTP;
	Fri, 15 Jan 2021 03:21:40 +0000
Received: by smtp403.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID a564e13b05922a94c9981164e8343cbb; 
	Fri, 15 Jan 2021 03:21:37 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <161067400047.6.9583852999945298773.3065711@slmail.me>
In-Reply-To: <161067400047.6.9583852999945298773.3065711@slmail.me>
Subject: RE: How do I get the Still version of LibreOffice? Or any other
	word	processor that works with Orca?
Date: Thu, 14 Jan 2021 20:21:37 -0700
Message-ID: <031a01d6eaed$890679a0$9b136ce0$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQHavpbxBI2sGK53Xb1gZb66Ate0vaogXKBQ
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10F3LjfS004915
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I believe what was meant is more of a concept of an older version which the site seems to call STILL in the community as a whole.  As of this writing, I would suggest that is version 6.4.7 which is the second download offered on the main download page.

So, if your system offered that as a package for that specific version then try it.  If not then try the main site's package at that same version (remember the second one).

	Dan

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Thursday, January 14, 2021 6:27 PM
To: blinux-list@redhat.com
Subject: How do I get the Still version of LibreOffice? Or any other word processor that works with Orca?

Hi,
Could someone tell me how to get the Still version of LibreOffice?
Someone on the list said that the Still version of LibreOffice does not have the bug where Orca randomly skips pages while reading with say all. I've been looking for that Still version instead of the Fresh version, but all I see is numbered versions like 6 or 7 etc.
Could anyone tell me which version is the Still one and hopefully a command to install it from the terminal?
Or any suggestions for word processors where I can read documents without Orca skipping all over the place? I don't need the latest features comparable to MS Office. I just want a word processor where I can read documents without Orca jumping around, and  something that I can save files as .rtf Thanks, SL _______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

