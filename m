Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1B1228DB4
	for <lists+blinux-list@lfdr.de>; Wed, 22 Jul 2020 03:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595382091;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FIkvX7zDtTBAYVCgtQpb+Sn6L31a6UpjzRsnqbfHFrM=;
	b=JjiLXN8tEBLbkT09O6AeI8Y2xHTVoJpi4Yol2JXhMehcJOzjDO0DE2bWdDZE6Mb4oLlGHV
	T74px7xf65pgRkdxU1x99gIEZlX33SilmVw+XE9kTO+1bmmDk/DjDzURsMGVNH1nglitEU
	fCIJgrAEyyUS0VBhEhig8mW9aleN0LE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-d96gRzhqNGuKPfK-MncjHg-1; Tue, 21 Jul 2020 21:41:28 -0400
X-MC-Unique: d96gRzhqNGuKPfK-MncjHg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F01E8005B0;
	Wed, 22 Jul 2020 01:41:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0079078542;
	Wed, 22 Jul 2020 01:41:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C685F1809561;
	Wed, 22 Jul 2020 01:41:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06M1fB7s007021 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Jul 2020 21:41:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 88AE3208DD86; Wed, 22 Jul 2020 01:41:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8464C2026D69
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 01:41:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A21B01012449
	for <blinux-list@redhat.com>; Wed, 22 Jul 2020 01:41:08 +0000 (UTC)
Received: from sonic307-10.consmr.mail.ne1.yahoo.com
	(sonic307-10.consmr.mail.ne1.yahoo.com [66.163.190.33]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-397-D9SZZaPdMkKY_SpUt33n5g-1;
	Tue, 21 Jul 2020 21:41:06 -0400
X-MC-Unique: D9SZZaPdMkKY_SpUt33n5g-1
X-YMail-OSG: DwuMLGQVM1lXpDCfQMgbbtFUHEHghntoMQ8GoMfyLqRZLOyGbbsKl8cJ2_DPh5G
	oil8_O73ciAjE3.GS.KxVOOqUzh_fPRlXwMV_IV6bRL4rC6OSvnrI0YtqnWIJdFwmjT2023Qrxa0
	..BzpvRqKuwRbgK3KsrCGy1ID77DpJuA.vhHGYwbPT.oZm1dIFyBzVFD2uBXaxuWfYOCMIokNYtI
	Ukqekn234NECw13GIg8AjAQrd3pUwqtTzxObp2OeOSm9DVHxuBLMdjD3e21DkMFa_aTkD_mhvieI
	rnHYt1.o24CBHMJ5iN3SHd_8QU.kiB_86msfhh9bzVqEWbvdOP20D6b9IK7XSmKKg2sUPE_GAbHJ
	QuGzPT.RoCIZSJ_YNMYBmu.1mj.2jPvQ5B09v8ThJDh1oFUVJEoldXdeYGNVAVpe5ioJe9wDdfWu
	EDNJoLMb6TjQEQ_bvnAMMi3.mtnrKzKc_k.kgpqKLAPB0yE_QlTbfdmK1i2O84RAxtuW9nzcL0jE
	_sQKaGggyvMJ93RlDBP.4tRjArZ.p2oxxwIpcmhuywYW.QQtxTSuckzG4esZbO50M6s3H64a_M0y
	6fae0CbLOIdknT9VGRlArcgrJW4XQdenGSkHc6GpL3Z.cVIGwNRc.QCqKVkvvziB4OyJVeb46.pu
	RmlJf6Lp67QJoo01bKCblBK8.8lZ7FqBRVKq14aCF56pRSaGLYsRQn17pr98w6.kuDEV5H4kmc5H
	nuG.BXdnH5UJdxqbpKlAAxL8sneB8sEpHygxSPuCV3yoBDHk5.HFNvi24uc.rHI9ytTreNJUNhGE
	81GkBeWz0Up8BeHEvMBjLH4MfDH_n_tDh2QQe9r_gGkLKR57f4oBNGxz45ntN2lEj3Vw9tB16QJ9
	aHdi69i9BIn_ZqloZ3Pnza8C0j9nYGV1jVnMegzeInQapLUK14qwnAljwIPoHJRMTEyUfnKb3Z.X
	7772oOFwWp1er7SMpF.c2tVjDxwQ6WG2m_dCWqJ8minNAmiVuu6.avgLBDwOA3eiK1ehTH40vxyd
	S4ezT4XOiiLK3Qh077tkmXkpsOqUaNPScznscgjzOMQpHBTAJ3YXdDAtsqL_vR8fLVuECWqeTtN5
	1QVBerpScRRDZN2H9HXUOWVuqwuIaMUmBjzmahVlbtR7UaQDMD24YZAitFfS.ZQvr_h14fpra2ZY
	AbKHyQEmv21X2cEpa5iDYYlROUX7UEFzIBF1GxG.Cbm4e4HBkNXAUgcw36pvQUd5m15D4db7rGxQ
	a7CXeovb5KjJ8i1jmB6bvq2r8TZaBxZz5tsqP92x4aT4ROWbnJK0H7qB.elXoQLrHXnYFmmz46hm
	_ZAeloa52wQSe4L7eUR8hJuojRw57yzNCiMjX3HvJNeOfxTz.yZdCbojQ1_Vtbim2WbMQH.8r92D
	t35f15w--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.ne1.yahoo.com with HTTP;
	Wed, 22 Jul 2020 01:41:05 +0000
Received: by smtp421.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 6f147385418909ad4b227fad90ee23c7; 
	Wed, 22 Jul 2020 01:41:00 +0000 (UTC)
To: <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>	<20200718110724.GA2593@rednote.net>	<015301d65fa8$16604280$4320c780$@yahoo.com>	<005c01d65fb7$4cb802f0$e62808d0$@gmail.com>	<01a001d65fb9$d8e51a90$8aaf4fb0$@yahoo.com>
	<CAO2sX30v8J32H9fQ-Ouxqy3fnBBBHO=-3wV3tEnd+XoJSznAvg@mail.gmail.com>
In-Reply-To: <CAO2sX30v8J32H9fQ-Ouxqy3fnBBBHO=-3wV3tEnd+XoJSznAvg@mail.gmail.com>
Subject: RE: installing speakup on RHEL 7/8
Date: Tue, 21 Jul 2020 18:40:59 -0700
Message-ID: <01d201d65fc9$276abc60$76403520$@yahoo.com>
MIME-Version: 1.0
Thread-Index: AQNc5jLN+mdFGYYu0fUGJnDrgEEZpQIekfAKAdo7VQoCE/LScgHkpUN3AWcyaOoCk/nA7qWmX92g
Content-Language: en-us
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Yes we are prepared to rebuild the kernel but if the code is excluded from
the staging tree then it's going to be a problem

I have enquired into the possibilities of using a different distro, and I am
not going to say it will not happen, but the chance is extremely slim at
this point.  Unless I can prove that we can't get speakup to run on RHEL
unfortunately that is not an option.

--David


-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Tuesday, July 21, 2020 5:27 PM
To: blinux-list@redhat.com
Subject: Re: installing speakup on RHEL 7/8

The Kernel is pretty much a black box from my perspective, but as I
understand it, Speakup is a Kernel module, each distro is free to decide
which kernel modules to include in their default kernel, and that due to REL
being an extremely conservative distro, they exclude pretty much everything
in the staging tree, which includes Speakup.

I could be wrong, but I suspect that in order to use speakup on a REL
system, one would have to compile speakup and any other part of the
accessibility stack that directly relies on it, if not recompile the whole
kernel.

If switching to a different distro that does include speakup in its default
kernel isn't an option, one might have better luck getting a userland screen
reader like Fenrir up and running instead.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

