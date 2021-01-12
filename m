Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 01CB32F2D23
	for <lists+blinux-list@lfdr.de>; Tue, 12 Jan 2021 11:47:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610448479;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U26m0oFLwkgcGJOPmkHZKcKxIP2S9y98pmpNN6zFZVw=;
	b=Zpdr6wyX2703C6aEXB4RwMTCVk4rVRDUON/dDwPUuL9ijUSfxbOTW2Cld45Zl2m4gwc+sm
	+6nRiiXaGvfBxrv35l4/kM3uhQGvlM3qV097OXn5dAcIJEvqC9RovmJP1NNn6g1g9GG8t8
	gKD0txygzdvNKyPL+C5ASlhweBbD320=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-198-xBMESMIQPaeMhwrV_71XEg-1; Tue, 12 Jan 2021 05:47:56 -0500
X-MC-Unique: xBMESMIQPaeMhwrV_71XEg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5E9DF107ACFA;
	Tue, 12 Jan 2021 10:47:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 594531972B;
	Tue, 12 Jan 2021 10:47:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EAA54BB7B;
	Tue, 12 Jan 2021 10:47:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10CAlYMM013476 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Jan 2021 05:47:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 854C0100416A; Tue, 12 Jan 2021 10:47:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 811EA110F739
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 10:47:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DC01101A563
	for <blinux-list@redhat.com>; Tue, 12 Jan 2021 10:47:32 +0000 (UTC)
Received: from sonic311-42.consmr.mail.bf2.yahoo.com
	(sonic311-42.consmr.mail.bf2.yahoo.com [74.6.131.216]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-344-Fc2_zwXkPs6mflsZ9y_qDQ-1;
	Tue, 12 Jan 2021 05:47:29 -0500
X-MC-Unique: Fc2_zwXkPs6mflsZ9y_qDQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1610448449; bh=WBo6kc4Ay892/uaQPtEXCHVPBN2t7M+4MnfUbPluxNO=;
	h=From:To:Subject:Date:From:Subject;
	b=UEKuil76uMH4OOiWMoAZtJpTyh5qbODlQcm5THe4eyP9Z8nvrZvJX1Qf+epQnaW43aZEikOIH1QNEegcBfZGIuCZYfSemaY+xeNf2cB+ezyhBpe9g4hgglCJo+KcfznByH+ixBSGYG2SUqiZGoYxupH6O/7YuG7L90BV050MqY1CJCQ29Ii55Mb+Pu3GWHahJaJ3x8A4aMxFx3J/XVVQsp7U91tL2xECibbe47KpoivZcVca0hdhvfJpMiu6u4XKjCN+o1z57pMUcAERQTkGYUjrjBfMfUb4pw3NS82z25afqt4g4BbCpuJ61vj25aIgSARsezyYqCWeCScAv5y9LA==
X-YMail-OSG: 9WvfpRQVM1l.9m03P0SCr6bF6pafoBZV8XMd_6jzl6bIAx5C77t1dEUiFPPDgfn
	Hponsuh39wb69SsElPQOmaQWaFSSqTKIOOCNwO0ZWTtq6MAM16_W61u__QICSwvQgyKBDzbm9s6j
	8.MuVHRSaqBbneOeo6eEGYCFxKxXObJk1rbuetf3H2oTs4GWtb.T1JPUzCbKuUDT7Nyb1MSuGv0X
	uvbV9THRuFuMqqXLpVZ5iginzNqaVD7hR0i6BRLdQPkKoVyUQ95jEuNr1UeuiEAg3q4VCo_K2.J.
	GrqWisLJPp8yfJqQoBPMr7OOL15Avz84Or3CqYoaII8S8gImmtxI4cWh_WChayg1.x_J2IyOAC97
	F2mILkRLiBCA6N4cYqRFgPzDdRN352.wuAkke9zwVSwc44urePCR44WhCNgB.onyir2yG66YjgB.
	DtTwgh91dX3esSH.INMbSW_nLoBbiVD1V38aaS8QbhQ2hMy8LaaHfbq8OazIwGtYXRLFNM7uCOwe
	ui2psI1S3GQvExJEYjX2xuKfUsqvNTX9t.91GdU4OCoL5Jr3U2Ad2a.ne0bMaDakqCCCqhH6gnhE
	X80AQ6Hx3vEQhWUaGnCKh0G23vdgWuqNjmAGuDOrhwb6jAD9NFh6VutHeLjb0IosLMpuU.4_oDiG
	QIjJkcX7aR0EqBo5Xs51IThqKVY2zM88mQiTVbaftrSJDCmWszW.0QDQybmFUWAYWJbnqbLLM5tG
	N1l38VK_AnXTPXrGYL5CfiAmgQK7NECQlE9w1Ziu4o1vo6gjrWZOTsV_1wLmA8LPD_iRRmXsyBZB
	Sh0Hld.a9eGjQjGHrQ2NoLOxNmaIX.zS4S7owfAguVtdfISDd_PJastRbdKIGi7f5FZ_x3seBlhX
	WX5bk7YLCqqeRpkWT60KaFiH_aM9vAl19Njq3_BydlPZMw93chkloHH9IFhrTOp8IdBSSD2v7z3w
	YgtD33vo2uz7T2PhyHdGoXqToqBO0pCDDvEHsbvezrSVbSPzfPnOtBXQ2A3Eb5yquBcN1Q69ckiX
	2e2ap2A6pM4YNC_vcpyUjaW3jaopkEIdJsqd9kfTeTpMUO0UJstUUu2_AVqpW0Ukkuxp1fwL9Dgf
	gecqyHbgbj6mqV3Yy38qIj5r.S0dkn3N7r25lghRkSDS6ssffWt4AyqOpmRE8a7bkLJl0u6zj5L2
	N9a1.t6BRkNNiO1vWt1L8p4k9_lhjAevKCMA1ZPFzyu2wXXImp0XCnzyZNZ5uQ6BB_032m6Y39t9
	ZX1WER4FouNi2r5CjbpB_L.rLGvn4t2dBML.cRHkiMPGn3BudlbpAF1_k8ay34QUVyM6s4YLCueN
	1gwYNbeuVo3MBYRidl.GFonP9wsXbh59Hz2i87EySyb3YDxlrBFHSCDiVqeBn4hnacNjrah8jvGY
	juI1m51VWqckJ3DEquFh98VobS.MaiowEjSQNBpapcDeVXlQg4YMZlZzb7oTrlcHooeEKUmMFQ_.
	x5qv15wLxOyHlp8HV4Vw2LMR1loSH9ubFAbUKMoHDGCXqxKFxqJ9TNdIYggvlrdVQsyVNvkfv4r.
	Jbj8AThIloOqxqqTY7Xu1L0oCURz5CyceatLjrwMU6iCtUbbttwygj5VAfVrs13N1umNAnZyGOtW
	1AonfTdc49hSdY9oR_icDNqUm89YxIYPgUsKOjJRlQjLF6LkrF3AdTzpYtMFsxvowBFyZyNh_vMk
	dUIRNTPW_TBPrYCvXnIvo3gUOk1.ouf0jgQuKNdmrPCNVZWVWkBtX8AtjisjhMlZqQEUFwGdVmAK
	WwXszbOXm0tckx4dsxXZkTY44Gq1GcSuYGWquCe3lofq_5IzOrItMlOE0i.1dBexyFxRsWGwhV1V
	6dhGuPV8Af84z3LQBWUyrHdFNLgyAU0RfjC74wMQr75TbO_OYVSHv5fud8qTXYYpR6nS7fkoBgK2
	PfMPUM7Pl_ms.pqOKdXxvWyJDtg359DScDNTt.jMTSCEUiviE6O4pWyzUzfH1kaJfjHbf.2MGr6x
	GxxBBd.q8106Dg.6pJTIncKA8f7gBCJSWLG2dLn30zWbXKM55m7KggIcQbQUDQtMY4XBjBvB9wmn
	HkJTuCZMUVcSIWY7mGRO4xMjyOA6tMCOOgbVGhbRBJsVHw6bVFuwogqhiVKwKhaaag.qkUuxzAjl
	YXB8a7FsQGsyyw..V77nBjbDYc5JyB8nJB.TRPU6qjkK14YkbIPXT4UAHyhSOxj0rhLGet9dgI1X
	81gHPANAfukCzQ.LekUSMJle8zs5RC7ja5NCT.wre1nouhxamjtcFqHMhWd15MKZ2hn89VtIRcif
	Ax2fu
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic311.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 12 Jan 2021 10:47:29 +0000
Received: by smtp409.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 43f9114029871ed21d5c3a1deb396614; 
	Tue, 12 Jan 2021 10:45:26 +0000 (UTC)
References: <161043867227.6.1989062734879827020.2997508@slmail.me>
User-agent: mu4e 1.4.14; emacs 27.1
To: blinux-list@redhat.com
Subject: Re: Is this a glitch with Orca and Libre Office?
In-reply-to: <161043867227.6.1989062734879827020.2997508@slmail.me>
Message-ID: <87k0sia0xp.fsf@yahoo.com>
Date: Tue, 12 Jan 2021 12:45:22 +0200
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


I can confirm this bug as well here. Seems that Orca has a bug that it
cannot read Libreoffice documents. I tried updating from version 6 to 7,
but seems the problem never disappeared. Unfortunately, it seems
Libreoffice is the only program that can handle office documents on
Linux.

On Tuesday, 12 January 2021, at 10:04, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hi,
> Whenever I am reading long documents in Libre Office with the Orca say all command capslock semicolon, after a page or so, without touching anything, it will randomly jump me pages forward in the document, sometimes like half way through the file and then I have to scroll all the way back up to where it glitched.
> I used to think that maybe this was an issue with Linux Mint MATE and Libre Office.
> But now I also have another laptop running Slint and it does the same thing when using capslock semicolon to read all in a Libre Office document.
> So considering that I am experiencing this in two completely different Distros, I am beginning to think it is some sort of interaction with Orca and Libre Office.
> Have any of you experienced this? Not being able to read long documents in Libre Office because Orca jumps to some random place in the document?
> Is there a way to fix this?
> Or do you just use a different word processor? I don't mind downloading something new if thats what it takes.
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
Ishe
Pure mathematics is, in its way, the poetry of logical ideas. :
   Albert Einstein

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

