Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B66583EB11F
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 09:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628838713;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=LcXsaYfjDYRlndfAf6SyqpuFt67LMycaecVwFHh4gKE=;
	b=dWI5Eed7a97wMBSLtXYbhDkPwZAlp1H+HuSXY7isXGvmeYst6xSLgQ1oaPP4BhPwROLepe
	aAZpgMlxG/pzbu2Jkb6K9Od09WQN3v1BqvZz2VUwmg1BqJ/18gy+O+ArGnSCRdg9+Q/BN3
	1r/o5sDQ0fnXN4CfHWAvCdshSbIVuUk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-529-T2zL0B-cMBycFQ9apdhHrw-1; Fri, 13 Aug 2021 03:11:52 -0400
X-MC-Unique: T2zL0B-cMBycFQ9apdhHrw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96FED8015C7;
	Fri, 13 Aug 2021 07:11:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9A0A604CC;
	Fri, 13 Aug 2021 07:11:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 01CA34BB7B;
	Fri, 13 Aug 2021 07:11:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17D72QtK016511 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 03:02:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 29A3920ACF73; Fri, 13 Aug 2021 07:02:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23E0120ACF71
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 07:02:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA8FC800677
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 07:02:23 +0000 (UTC)
Received: from sonic313-15.consmr.mail.bf2.yahoo.com
	(sonic313-15.consmr.mail.bf2.yahoo.com [74.6.133.125]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-569-mVLQHkCAOKOmoINWL70uCQ-1;
	Fri, 13 Aug 2021 03:02:21 -0400
X-MC-Unique: mVLQHkCAOKOmoINWL70uCQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1628838140; bh=GYv1Vax4Ex+kGShyeouVFxRsjXTkY+GnWvv9ZxrfQd/=;
	h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
	b=O9BrxUUIwe+RWlKWjQ/d5lqvHmKv/B6W927Ayywt1JAJQ1Og84QXg8XwLXVD+cHSKMqENhPsCCSrnNLOASCVEc3TJA7WE9Z7pREgWAAx34HBqEfPTn9CQlss4+DMRs1imFt9s4ntA18S2qCd/gyqMi5uhSawb9X4RU/POZHUkeEFq4Rutxpt0e2Z7xwzaWbe0/HJbql0jmDJq2Hd0kgv8wHgnOAz5DqcHe9U4+v3zBxh6Kdb2QwN3G7X794gkY18hSj55tV7UG5bDFazdGRYosAyeZrh1X4vh3uxg7pz2uyeWVcMLK4/AUVO6kQMOgKTpk9yIqfIXe60UoyE1zUmuw==
X-YMail-OSG: 0dT900UVM1n1xBsJztsE8sHgxGjAJ_VlKm2.DAVg4kMToEpkNo7OwOg1V8SjgVR
	qOBhvrd9W10qpNiY4xZEwgDQuIcVnIUreJ4oZAblAmYxAp_qXHOu760TVKoYoS9BQOPuv7YmqZ79
	KWJ80bpFLTMHczafm72JiYnPgC_J19Pz3Ehfqo45WADsoVJJ5phXC4NfrZyqMZVqP0e8vZtpKa1h
	b3SFGOkaX_q0NbswMhqYDPbquymAefSECg9QTu3n2pPtpFpSNWoMW2RoiZ8nvIDuMFjfILF.3zYL
	5um2OSmihDWiH5p4MWQwBxVqLB3QN4p.gVsLOSWYZyeh8Ci0YErvFXmynAcUW8j3Mfp1UpU7cPVh
	j3oSsOzT2Tf1EsxzYr69xJ2BUvgLotDL5oTYmS3ul5VHECXvSZGvrrpxCrtR1Tk.QXPR.UzASGYY
	ClzEpftGWPTzhB9RjGq1PXjuX.2BERSoqoT53qDicBDJtD0Z6mk9LIrazZpK6iOtWbKxyT3Nhq4.
	hZiO7an9EU8kTNq5SoJUczn_BxUf35AChxmDaw1uktqHDDVsAldUPgxWXHKvaAK4zZYABMqyCkXM
	Kwj2mw1WQqE5HTAYqHgfXJxMEsCneSKwtDbLWDx_FH.0SaFMQ679e8qaIBtp7nIsC4d9Z8_xEYOx
	Pt46XXtfDll_qodFR45MM6A4j1G4aQ3HUIdswkkupRfohYCuyDIimNvqKWh0lDLoThzEK0T1lAjD
	TqnghcSNjs6GekXMF37BHS_0saog0cyAf7MYQuMJBgSo14DesFaolU5eHet7hxdT3c4dkr2jC32G
	f_u77Dyh.b5NK279NQWQUB4F5vSB9aSKtoGKh.P38I1JfZITs0rKWqlEsr_h1g5O7yR7AT0N02LM
	gGnlmun9mA9UUxPvSA6KBgIFp72dCzgPHTgpXp0FwlHCElhFTB40auCCkp.OKVjaYIRE6afqrgjl
	Z4knrcWG2kFhX5Ycz6CVuEupRj9ZEw8hMlwRHiUL92QaDffN8D4yDwTFPH28ATRrqpGU5PCLqZEr
	HDc1BhUgyXgD53RHEs3yl_39prPE81.NEPOZl9vXmQ.VjjBFYnmgBNim6601XYNNygt0BWXYF5KY
	GJp2catmXesVYLgPgnqA.ssxntAftuTUQ2j3PUiRqIn4arnj9JXvRREe9XGGcsV9POw04.pJnwgZ
	YZpPLk81eDC0bROq45SqM3A1tD0CrgoTlKT4xpP61AcRI7SS3FmIGOFmRpXyYrQcxZ7D92Y90JMR
	VQmMNIteSD8Crntn9xUIEMiETg73BaHdW__7gyopLMHqIqauLRdi3pDKNa87TSgB6t8kSQB5SPZi
	T1tctgVH48eArGD6mSUZj3wpAgm1TXZmFaKuORYzuEBc0fkO3iPtw_vSK7KBBkkB9bPZqqR4jFM_
	ItqFe99JDe1PdW9n330Mp7mOibUpqYpT08h1popq_ElSviRoDadN3jOPTFC0vds5UfIg3BBmmcPB
	ebonT9oCGRG5Jgc5FdVh7B_aW1prYHOyLpoPd07zdkeEs584.dZHGaYyK2ZvM5Cp9hTW6aTQlW30
	uGG3u11fbzmTzMsQFr_pQm9i4e.C0rYBy5jtNk0GRd.9.qNUKoSCaU1toYLAKsUeA8Jf94.GF_.C
	VSEVwq__75U2wGHLWApUeDKKQUfaoDzCZCpoLtTVmN.CJN8rZ2FiLweFAOjdU9JaKarlGJ0llCVl
	I7pxvczc.fDkNluq7hxCiGLH0DhC06kd1hpsAItRwYmQMouFnM90SFkePq0IIH3YUxzv3wDpLYjh
	RDrsq_b4traIq2clmF.VsmOKSe8HEuZ49qtaFPJpPKw7JX7a.iITI0YP2Tr1Qmyrt78ObSD__V0z
	F.mxxN0TKrENrPY5XJRX6M7R7AhvDeXD7iE2xzOR6ZZlmb2madxUcA8qzmYxyrgRZHtXmgg4kZBH
	Je_IjU6k4jnoLBszgwWuBwWqqxV0ZA4Id7s4E_F2ZMp0DvdJ54ijmyYpGspsdH4ug9RMt1DmbkYL
	.Nltq83V.kkNswu76OuLMw8ZxvimtRFhoNm2qZKgPiW0tvFaWaXFdpY1TCfoapeVBlYuBh62hfHd
	IGGXQw2KXN7YiedxGFHAB9wK7iCmao1Ziqr..7kjYMhgFGOjObEoflmyzyI_lM4A0aaPN9.K6LeE
	2SqPQ9h0YsNjCu4YqNOMN8oNp.H.upOwvmgfV7IgrYlQ-
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic313.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 13 Aug 2021 07:02:20 +0000
Received: by kubenode586.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID d676a541f579b5d775fca51d8ea1240c; 
	Fri, 13 Aug 2021 07:02:16 +0000 (UTC)
Date: Fri, 13 Aug 2021 09:02:12 +0200
To: blinux-list@redhat.com
Subject: Word Echo in Espeakup
Message-ID: <YRYY9ME5KKnm2Iz+@brainpower.wer>
Mail-Followup-To: blinux-list@redhat.com
MIME-Version: 1.0
User-Agent: Mutt/2.1.0 (2021-06-12)
References: <YRYY9ME5KKnm2Iz+.ref@brainpower.wer>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpJIGFtIHNjcmF0Y2hpbmcgbXkgaGVhZCBvdmVyIHRoaXMgc2VlbWluZ2x5IHNpbXBsZSB0
YXNrLCBidXQgaXMgdGhlcmUgYSBzZXR0aW5nIGZvciB3b3JkIGVjaG8gaW4gU3BlYWt1cC9Fc3Bl
YWt1cD8gSSB3YW50IHRvIHR1cm4gb2ZmIGtleV9lY2hvIHNvIHRoYXQgSSBkbyBub3QgaGVhciBj
aGFyYWN0ZXJzIGFzIEkgdHlwZSB0aGVtLCBidXQgSSBhbSBhdCBteSB3aXRzJyBlbmQgb24gaG93
IEkgY2FuIHR1cm4gb24gd29yZCBlY2hvIHNvIHRoYXQgd2hlbiBJIHByZXNzIHRoZSBTcGFjZWJh
ciBhcyBJIHR5cGUgSSBoZWFyIHRoZSB0eXBlZCB3b3JkIGluc3RlYWQgb2Ygc3BhY2UuCgpUSUEs
CgoKLS0gCklzaGUKCiAgICAg4oCcVGFrZSB0aGUgZmlyc3Qgc3RlcCBpbiBmYWl0aC4gWW91IGRv
buKAmXQgaGF2ZSB0byBzZWUgdGhlIHdob2xlIHN0YWlyY2FzZSwganVzdCB0YWtlIHRoZSBmaXJz
dCBzdGVwLuKAnQogICAgIERyLiBNYXJ0aW4gTHV0aGVyIEtpbmcgSnIuCgoKClNlbnQgZnJvbSBt
eSBTbGludCAxNC4yLjEgYm94IHVzaW5nIE11dHQgbWFpbCBjbGllbnQuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

