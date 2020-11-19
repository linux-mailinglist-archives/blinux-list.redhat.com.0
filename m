Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 00ECE2B9B9D
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 20:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605815026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=i4uSoTy/wrz6OhbazP60cBgtdnZBvcAv/PJnW7N4g7M=;
	b=C0lnU/rUJEwwRZcAH2FuTkxn+VNtvXy/DUa+q8N4Cp91URF6R8DmAaFwiXWMJHXl7N1Bly
	tt5d+Uk48Z2XBi8qXh4zW3gf73tgOu4ig1cKWF6PXRsJ9h8VlZDyMXAda7FP/+IDg+wJFn
	cw80dWxAjih6syR019ai2lIccCNgVvI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-xQAAn6uRM4CSPV-yCQVrnQ-1; Thu, 19 Nov 2020 14:43:43 -0500
X-MC-Unique: xQAAn6uRM4CSPV-yCQVrnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B3F95911E8;
	Thu, 19 Nov 2020 19:43:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F4A85D9C6;
	Thu, 19 Nov 2020 19:43:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55029180954D;
	Thu, 19 Nov 2020 19:43:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJJhPTx007811 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 14:43:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BEA40DEE7F; Thu, 19 Nov 2020 19:43:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9818DAF04
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 19:43:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3C3C811E78
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 19:43:22 +0000 (UTC)
Received: from sonic313-14.consmr.mail.bf2.yahoo.com
	(sonic313-14.consmr.mail.bf2.yahoo.com [74.6.133.124]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-196-ilN0uSEYPgePNGFVb4rKAw-1;
	Thu, 19 Nov 2020 14:43:20 -0500
X-MC-Unique: ilN0uSEYPgePNGFVb4rKAw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1605815000; bh=H4eulVuXl7fpdxNE+0dcoeWdXOQ9LF7ojhCpft3QAgM=;
	h=From:To:Subject:Date:From:Subject;
	b=MD/mI7V6QYiN2x/W2Zsw1cJ24qeuhRuhHjGOC8nEa3Yc8A8s3HZ69iV2jJvKc+1I3dDupanVDT4A/6eZpF1l3+caiL5qHQ3icd/Aiik8t2iso3vV2Gl/N0HQ2Kq522J38UjleN+nHaPMUTMa+vnB/I27ub8X/KgIfEHYX6MT1ghz8SaxPU4dWPytIrEfSuIpEQjnU0ApzLqWP5J28iUghGdi9N8aZycYZ7KQ26kYxW4GwY2GE1ykLtBiiWxZGCY8RP9RZ1lcMIDWSMd0tYGiQ/jBuGFe16TwPCi1inITFh0z6dJgJBW5DIRCc8xTJLPepAyUhVWkWHNLioDB3zUIPA==
X-YMail-OSG: 6LwePrEVM1k.81euPAq8Nl2w.WCsL1roEhIlWUgEEMz8lrhDvmxHCTU.kkBk1fB
	NyTtXxpay7sfdrPqhvr8vMch6mUqWNFSlTN7Ty_TVLiGVlR_dnPbL.NIUoK9rirx49kdB8uII3eP
	FTQ5kKiznPSLXTXITGpTc11aw6xP3mRPUkZxIResxQbtrQM1R.4a1hmhVehgusUfTrlbMA3.TCEW
	uiejSLUbFNZONgy6lEJLrYzRc.ltdTfs7SqVhf2qqwzKi7OGNoTcBewjeOHSsxPgh7F8iAWLZTnx
	myvV7IKJ5WqulOzYtf9ovPLt5XWMgiwYWXHPVlJC5WNFaNmZyAYR8QELWsjXXP2zyRpvZSyCwptQ
	gyHOhPJw_Nkj7fkQc6Pg4STRzjzI3WpBxa0mK7x5wJpHZaUEb27ul8cFgG0MUVaDfH0lLgJRo3d_
	F2dK0eiC6VBrg4TJBzlGidzHXVH0MqNrKCNtzlQW5NhBS9LIdATSY24aHVuvUbAwa7qE.po4Tzvl
	uBMgvSoBhftEW1KEVYrBL8baeiw3qHuMPOz6C65ddjscdU0qj7KuvbF5NHGAnWgx5_9o_pkd9otg
	.APPvCZ1CwNJJw7OPKIVNvQo5eP8jbLCPdGmtv2K3WKZSFk1h38CEM5W__t1Aj8O6DiuAk39MZC6
	y7NnmWA2KINn1fOG9VzWmqtLvDNxGYRAzFodHMdLTBRPnQ7ImearYhdWfzixUQfz49qfrnr3._UD
	SRnxvbDkZw2C5uibfVKcxWViu0wI2pJHZwsrB2xptKMhrV7u9R2DY1T1uwrU1mlMFz794EvFuAzT
	I5M4KCYMx8hoHqdgyYRGjuoobfOj88ifspA024j2XK.Qi32mYTfHcH5gF0Mrr55K89_kFdXwBgPi
	7piLeZZUuMG2ysnPtmt5yZOB7_mi1_s8HyKTB10P9usCIXAvpXNOzbnV_Qj1dV6DaErd.nHj6grc
	wEfwySPXg.ilSTzwlexoIIF5NLDdLDR8PszP30tNW4gsU6yCZ5fciAMlhOp2ZnieOC0XuBx4s._H
	hFKoDYCWew_lHEFOGos23EztQkHSpwYn2DATjUnbBxsPpx63MyQRsnV7NfMz3P_Abmzzc6XL6Z9y
	t91vo8Mf_X8rsg7MRbWy_aP2kYUwkGl6wOq7VBidx13E.2ji.4ShFTM0KPxe_skm3__sNYfRs4qG
	FiHP3fUM_IG9GFD77ahXd_rJ6fyGXRDi9yRDOg8txtrR76qKJeSA.X0YKFPd_Rw5CPl85EABG5xI
	6I1LnJHWUNQhLlzlYJHfDug2IzaaPuHu7aPsCQ7gYDsNHPaxhjF0h8arlN_qmgdAD_SOK6.RLIZQ
	u715fBo08lu2hLsOaZTCZuzijiHLsiTTvK5R_JgU0e2DFDdEtXINkB6Pg67W2iEGejqWucE43rhT
	wlJH1k8Dt8KCUbcQd3xLlodZL2sVyyPKDJbQpeSM7m8vRdayeFcMq8tQr3C9liD5yRVQ23cZ3cdk
	t3MRbxE7HGx2US8HgCvFDXnT4YWucPjw4mLUQM4vcWDkFSmxpQlfre_dcluvTsYJ1r.L8tMlrTIT
	yiXPdQe1Cxqh6evpMSQBe.HKFiz9rpjPnNdW5KO7dSXjlBllEr_lNWfElUJMdVUvSB0VLiAXUih4
	o3q8Eyb1bfRWbk_wovZPl2tAiG7RlSjQ3kdKVqq196sj5xnO5zMcgIallK6FwTGWWlZiGZ8RyUpi
	RG_2H9Y3xsEhP7mBfkxJmnzE.KrHCfQPuRe9KTGT4lWzeR3OsQYgDeM2QfTYJaUEnPIXCwZWSV_C
	HrMxIZW7H4CEsnihhtqnGRW3V6vC_a6Sj2pHYun6RGloTxQja5mp9K3DuWeGJujEWSfRcSutOVRT
	p0SOTVnM3hbL22_imfHxtZOY6e7d.G4m4JKW03wDgu7ebtDMITHwYLzR0iOx3u_suxbjHaZaZq7p
	DUkx6vC1AvprXTCl1E.on_fpVjSnbNdgl9KxULr3Wv7EOlaCNycjKVnRvixjx.nKWTPKVciHU1om
	4MOOeUtLB4.OglHW8D9FR2LAlfDtD_61JjD4DZ.1Kg_blbpb_FuZt7OnALqygeLzS6ik_GfwexRc
	x8_u28HAEnS6VCGc.X48AWaJRZXZTfJAXy_q813xdRzjMhs7BtNK6Z3qp7zNsO3f7UqjM.1Ny87e
	DYcin_zuYnPWRyTY0PixU7AeiYfZR5w3vbPpRmG2ml3th4kKBW8iJj2NaEg.qUh4WMg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.bf2.yahoo.com with HTTP;
	Thu, 19 Nov 2020 19:43:20 +0000
Received: by smtp417.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 3e3122eecc9af40a1100fc72d76a72c0; 
	Thu, 19 Nov 2020 19:43:14 +0000 (UTC)
User-agent: mu4e 1.5.6; emacs 27.1
To: blinux-list@redhat.com
Subject: Producing Braille files on ZLinux
Message-ID: <87wnyhf7zo.fsf@yahoo.com>
Date: Thu, 19 Nov 2020 21:43:07 +0200
MIME-Version: 1.0
References: <87wnyhf7zo.fsf.ref@yahoo.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

How do we produce braille files on Linux? Is there any software for
transcription which works like Duxbury or Send to Braille? I just want
to convert my ebooks into Braille for reading on a notetaker or for
embossing.

Thanks for your help,

-- 
Jay



Pure mathematics is, in its way, the poetry of logical ideas. :
   Albert Einstein

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

