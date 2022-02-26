Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7964C5531
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 11:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645871881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ObRoKbb7NGoSwy/9PNcaQXEjl+HS/HhVpeDgq0EalRI=;
	b=G7Dy9TR5c3lLziP66AQx7Gk09fu6Ag+OplXgHq81NR/DiH0WBPRIGoyZ3Of9YBQ5kUhcj8
	WTdwrHhwsfEdOQ8/0gKd7Qfqf0BrK1MjZU4w6RUoaU3Of82Nk403j3/23eMHLEu3a5AGzU
	fCb77TBRbjpB1ytg8xtMT5WtT9wUlkQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-652-k2KqqKKAO1SxQXN_FETcdg-1; Sat, 26 Feb 2022 05:37:57 -0500
X-MC-Unique: k2KqqKKAO1SxQXN_FETcdg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6A5CC1006AA5;
	Sat, 26 Feb 2022 10:37:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB287D5395;
	Sat, 26 Feb 2022 10:37:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B673018095C9;
	Sat, 26 Feb 2022 10:37:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QAakLJ002072 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 05:36:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D604076C5; Sat, 26 Feb 2022 10:36:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D14D376EE
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:36:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C09901C05157
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 10:36:43 +0000 (UTC)
Received: from sonic315-15.consmr.mail.bf2.yahoo.com
	(sonic315-15.consmr.mail.bf2.yahoo.com [74.6.134.125]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-354-dnfvPSppPRCgyTpUju8TcQ-1; Sat, 26 Feb 2022 05:36:41 -0500
X-MC-Unique: dnfvPSppPRCgyTpUju8TcQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1645871801; bh=qEK5b5i8G1svIdlXhlBKX/H0PK8w+bNx01pJPAkQ5cA=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=LpugA+fveXQGOH74HKhy0luGVAp/d70M5upOBwncaInQwUhUsylhwGmzxAKHWdWG2i9mgbADSq7FMnJiZNQYjyN8c+oPk0nEITnPBdjDFJN5oB3ch1OuU5CDFuFnKjIIcpgm61roHHr3PklIVfhSpf83PuMNIMyWTXa59lC1numvmBdPg7MMQp88d6K6rnky1+hidrvUuXMcyQkOOAM+UP0eAKB1igMQXz+prP8PLvh9yCaiVS7I4IAvggeH22fXIcPQg2GqnvRGwIyjnEJChN14V5aClhKVv3ZZ+Ay7KZGhmjVS/Qnq2Oceya/NyLKzcPNdqnLUsBIbjnLi5tYmHQ==
X-YMail-OSG: j0_nJJEVM1nFvDFuYgQNp_V1S5F2hBn2dEKTGRHIp2BNU1s2kr657PUb052H6sr
	4bUnBVRhuYPkYwnUY2KnM4pl_oDos.Sb.WDdEN54gwrXBdPzLBJhbfEV6Z2XdN11DvTfG935V_I3
	OdIPFjvF9J3Mk9o5C0qdPWTU_BieSUbNxGODQ0RXzxIJhbBa0Rliph10TBp5r.XU_ZKjuw2hybm3
	YtJ8CwwAunN3b4n_Gl07H5afG6aUbGQUJUROVElc80qzX1mYVH46_8YrssunSZ8SFJ4P2rEY9fFp
	x7IlpfGBnF29IUaAAsoum_JPr_D6a_Gs4fFbOHWbsxhfq1JnqIIPqsfH6zeJFq622wGPNl9uyRw9
	aE_YFXxaFUpmvatxb9l1LohNi0iyaqnll5pN.wUd3cEu2M_MqvR36doXImg3H5Dn0nc0qTDYOV.p
	lA27qfJcJk6fr2fpflCskSiFeF3m5NcEG_jdx8yfEW78bn3MZIehXzE0byWybvmop7Z.RC2kjDOB
	Zoqnvl_cUMm8Y2W6VnDbZ3S6cMhU3h0sqhOFRjFwRqc3kM8kbuI9sACNn8j_UqvHlWCMd_EIpH.R
	uFnQF5lSDjdWCj7CdY__gO99M51ZDBKpTdDlSQATdfFPlfxLeZRCsZVBRD0Z0sMofNVDtl6M1psg
	X4qVHnZKTfRX3_gF9Fjn2plsXhZ2_CFa63jtaXe.xw2pAVi95C_XWl034tcXB1owmTU5wqg9Qms9
	eXpY1G7C3tXqJd6V6Exz0Lx21Hr5BKd5bElLIxNLeSBANmnzgogmN1XC038geFdJrow7C6voGsAV
	p2X_qTESPKN5W_OiJZ97FqQpcMAP5.C3lpgpGI1HzpBR0wheFF1m_YGAn23bKOW7KJR7BLpgtkA8
	82EY99nVV61II_k1f2C78ft.StzWgFuR4VBWMky5AyXwktmsq6L3Oh3dBSfocbhepxhf6K5qedJE
	WHYkGWxG0sBH1Gqurd6c5SV2fqqgR9TKnMkRY.987YodMOlFG5k7JANcLg58QW3etjOdqnPuEqax
	Ifun58jSS9fMcpBrx2b_tVxzg90ieC32lVJHfj2c9ZXxabperMWrDmwM4gorPzWtwNeAcsuA55qp
	6BDAJZiPd5t3MlRXkv26iZg_AXS3Nv_aqVkm19RTWPA4uqaphMU8wYOCfxBFiBSURaAZiPY9BlRq
	CKIc.IYX3zUAe93iZmxRh_ORHUWcz81chDMxs.rcIYsaeWJnYp21yihxNGvusmQbIDutSkqkp3uv
	lHURuNWe7ctIDqdQjDqTx9mkv2yEQ4RdwHHd1N4HlWcN05AZHpTvsHCXzKqA1OVm60SCzBW4gi.X
	_vUDgTAy5.Z8Jhp_Zr.v7v.ct5to4ozmB93OpqiBK9GOvUvTr4yc.Hw3JtIDzSM5ziq73xFsJE1J
	s97ihPez9S8L_NfoK30nwlK7dwMrVMzSvEqByundJjoFHA3oHiMQSorUzJWijm68sNl2uZ8BqCRu
	VeqvUUw3OuX1ocndCjNfvo8631Zz2pusoGFWWiI_mMcEuLVist.c8ymFKydz9SkIFBaDyLGAE56c
	SaA7WQUvdIY7nnnAB6NS8rHeAoYt3dJePar0qnpq7eheSm0avF8_jQXmmPTwQc5Ieg1QadzMHiBV
	ju8eYW8Ss35IsyiwtfEVmhsz33EzbPc4ZbVoWYKuy7oP0Ve9YxqINJHrNfwpv2JdVkkX3xhKFA2Z
	Gnj26FwLFyQdz39PyHeOQgKkQ229YGPD3otIZP6Wj2P0aWjhKA_jIpA5Iqoxbpb93mq.9HAOiohM
	XKW5iBXDIxJoImBla49rvXkqUWxBUY1FpHWjMESJOvuBbaJao7MQ3Jp4MTbM9jXopdlxiZrJLu7.
	iN_9dwmWo.KD.zascwX8_uU5nSuOqqW.KMGMSRu9.2yyjdDWEBNq9BRq0qiWP5_VvfPL7A9bCo9c
	lBhhJQC6cSFlnyAAkH9_LUZcVYfhy9ZXN4VDbMVdRM.owQvTRZ6yEZusDt1IlAmkAZPE9EaHicT1
	Dr34OM6k7WBW46PFFeZ3NmOUu7UMvEf_GR9X5ANI.ls.RGF3Pq49gCswi1VoP1yxLCQm5J_1dxGF
	G7GyqrdQFKAKbsiQTRDhyxSDnmO.p1dUOc8iQRkopop41sKmNQKjIARRbsTzJgdsAm1I-
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic315.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 26 Feb 2022 10:36:41 +0000
Received: by kubenode502.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID cdb91593b203c7d6d8eea236f2513368; 
	Sat, 26 Feb 2022 10:36:38 +0000 (UTC)
References: <877d9ixl4s.fsf.ref@yahoo.com> <877d9ixl4s.fsf@yahoo.com>
	<20220226095836.lftrrnevabjg5bnj@begin>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Do we have the sleep function in Orca?
Date: Sat, 26 Feb 2022 12:34:29 +0200
In-reply-to: <20220226095836.lftrrnevabjg5bnj@begin>
Message-ID: <874k4l7w57.fsf@yahoo.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"



Thanks Samuel: certainly it is true that some solutions are what 
are
just before our own eyes! Thanks once again and be blessed.

On Sat, Feb 26, 2022 at 10:58  Linux for blind general discussion 
<blinux-list@redhat.com> wrote:
> Hello,
>
> Linux for blind general discussion wrote:
>> Is there a way to make Orca sleep when you launch a programme 
>> that
>> self-voices or a  game?
>
> You can press ctrl-orca-space to start the per-application 
> profile
> configuration, and disable speech there.
>
> Samuel
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

