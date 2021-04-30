Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CE47A370358
	for <lists+blinux-list@lfdr.de>; Sat,  1 May 2021 00:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619820683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S+YgvOJ9YOzbUgNKOvtJI1TtdHK4bYpcx8dLx/Kv190=;
	b=gIOK1hthaoL00v2mrkovmxetuizvrvHy/sAzfIkUMbTrHilxsNp0uHfPzK4P3CQHkyKFQe
	wSchMJF8Ax75aQlFIWZGQbAfpPrgDOsAOgzp+SfJB8cK5QmxXPBa4AqyJ+uiOzQ5XiMAP/
	X6cPFH3nfeBsdJVgfbhZUqvdHuMW1fY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-YbUyAiDdPfOyVeThEVtOaw-1; Fri, 30 Apr 2021 18:11:20 -0400
X-MC-Unique: YbUyAiDdPfOyVeThEVtOaw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BEED501F3;
	Fri, 30 Apr 2021 22:11:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D7DA5D719;
	Fri, 30 Apr 2021 22:11:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DAC7A1800BBE;
	Fri, 30 Apr 2021 22:11:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UMBA7Y002297 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 18:11:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EBE981054FE1; Fri, 30 Apr 2021 22:11:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E76AC1054FDF
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:11:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19BF280CDA5
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 22:11:07 +0000 (UTC)
Received: from sonic312-24.consmr.mail.ne1.yahoo.com
	(sonic312-24.consmr.mail.ne1.yahoo.com [66.163.191.205]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-219-CBiip_OHP4elfyZ9o7LkQQ-1;
	Fri, 30 Apr 2021 18:11:03 -0400
X-MC-Unique: CBiip_OHP4elfyZ9o7LkQQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1619820663; bh=XmfxsvF5375drFSg/SgBzZMOHa9VQ9AoHN+eF8T+NOT=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=Ic5sDtD+NSKP7s/L+zefjFut2Br03dqY/zYNnzGSBawW8nlmja6ImXJ1mChVD99+GDCeukFqskHPM7SJuwOQAjD3IwlZI1Lx3Gn2qQtLfCYWglMr298G3UgdKHGYA3Cuyd/Anb7qttKha7LkJ6q1GyEUME0GJ8yTSDur69AUJdMtytQNs22wP1Dx9LHhyqHrW/xGBJxq7DHerzxyN8uo3913cjT5kdSQM64NfYP/4EtCOO/L0j1vsynUaQVkN8BvoKihar4omgsQ9Xa73yQPl3HKVPfsKqiugfL7q9qLz1w19weapXQtEO+9MYO5sJsmeQIWl+clO3nBc8XmQQtOlw==
X-YMail-OSG: g1aEoyQVM1mIdk36F_Fyu1qfoRUU5ehFDblpSC9TwsUJXe.QHAqpc_414hb4Qd0
	8cOcI2G9Z0aaOcRNrYqsNlVCj8GYboujipp8Ac.fxqREvXQ.PD4Xn5DfqKNQ_83NBSiFJ5BtC52.
	T0IoL92gxe11KPSzDgKA4cAaqzX94Vz1Lgq.2tzsKFyErXyvKJjpUdgJnZ2lUDMj5FnNbcAXuqc8
	jp40GyZkgtdTgUDVz7zopXTrF04SNCDGbnstK46EDZhAnbVSfrVgbYx9Dc7__QtstkNi6oxJpRs3
	4IKF9oEgo_F7af.UOLbN5PW9AFXQQKIL60zhD5qeWUV9uMiT9whOei0XFTjbtmh_9YI7bNb3uxYl
	IIGuaZMDytBu.aqSJhIu7YoT.O.dc4H2KHTyXx.kmZPuMatEH14y5iVLCcaMn7rYnYYZri5az43g
	_LCO0ZjnNRLqaahT_fdPuQ5xS2lagQUGyM4zVaXOlJdmRkRoCcaGrpHUY4pdEJKT57z7ucAxKxgR
	O1PYDNj6Q.Fj3xpT745Cjk5IeyIDMu9SaCl9jtJ4Q4ZgNa6hdgq92S05XfTw.74guBohjncLD6Za
	AHIbOaJOZhBB.WFbo2PqCV.wzZljSTfer6SOFWKhFSowrFRFS9pPeQZayCxBDHwS0H2SmffP86tB
	1MwZQ9Cmx0LT1f1LsdGB9FuIG8C1xUDKmA1WXm3qNsHj2n.llmVab6lGnF2WLf9AwUBlqdaMYvhM
	WyXWg4DA5OJUb4E.BKbTFxgVpgRpErvk_F_eCnhmk6L6JZW461.lj9DQoWGqAqZAT3RDeuTgLSE4
	EsklqOSfiqulaIQXPEIVoBgHCKUgcJTmBSv__tghwtEnV8adOjJJPjaE3F1bRCDoHBLAewqhw22l
	JMPiWlQj0.YrAyGV_iIdC2cyASf7WHoZXyWCbx2wpfcvPn_fkbuVp01BQnRYwfeM7W_wfUgOnFWU
	ETsGG2Oe65wUNxCA.LiieGsDKgb7ZMnzgJVg7wRd4Hzw64l1iRoVQY0OmmQnTP_Pw2dZ.xOsaGD.
	CNSI.v0qNsUey2bfgxzo2OvGftHlL85SIhwIfmmFhArIIG49941miqX0WYHbyizmrY0jivk3jXzd
	5TPMiVO2jRpev7LbeY8sD3QI60cRd23rFJnxX8Fp6vg1GxgM3nZOHmpkKUURG1hxVz1vW13Fit.n
	X66EOxSGDph5CwxPKC7YmpMvJgtTSYHbDH75ajntbQa41GhXTOY9OcfFw5woPnGj6jQx1iAKlvtg
	MoOFSywxq8_HwAb5YA_IrrLhPJbioMdI7OmCFFd.HlUpmNxqMHf0ZEykfRcItiRisxQkSQlVAhIb
	aHeRqHmKAB2BC.0yrhCe8A..p.75Eue5F9ksUDoeyRZ62RL1dq7CUE9LAp7qtK.ZRVivklux8sTH
	EfppFHpX81uajF1bcSFyso6AsqIUE.pHAI.3ILqIDjWuflQi6VSB4IUQ7_DB8tLkj8mD3UvVxCx3
	_rYcm1pEDbOOy0SJ96hg0.EjEPzxI506BwqMMWjhiI5blUvK8LgLKBS73psYNAu2Y9A_pqi2lFRm
	00kWtUs3JEYpoGA9JSz5Jo97yO4N2HwfkSi5bR1nnJOKTVYKuzsiVqAg8ebaHtL_eTUKgKEcPGUR
	RnkqUpldKMGRiy3U1sjDfkezW3VEroIRW9TwbrCsmTE3Fucg4j1C51WlXJtVLjEJSqPEEJmVIKFT
	EIKlamKkJNq7mR5wmfaZD.holRDu_9tMxbD23qbbi6YF7YxbAKyNKNTmr9_hvlgdlQkLtkCSW9Qc
	Y7h5mWF5o5OlZKrbpEPyRbdlNm31TBNpoGzAEnvgg0Zt8N3DsC0KgmQ1c.apnqj8AFufYhehKTf_
	0eJuv304rtCe9GqO9rbPLBuOG1jsvgk7WiTY4SO4XWYCcyNH.Q2HVUGp2firp6doKYGoJ590sepP
	ksPJC7v5HS5Z.iqsvIZlyVHRstKQlIcG4Mv7YB3u3V2tdr7u3CqhCvuhzJj_6Xlrmi0zZXV5.E3K
	NjWZHejewjZYVYFaR2ovV83srb2u991UaKlCS6pdSyL1A3fH5JEhpJx5astdRSDHsxMYmzfkm6tZ
	0C3eTawdFaqzWWsDCu7qNN95mTzlRP_U.vW3s1Kit4LHXlPKxbFfleH6FJqXUxPQeRJ82baGu4d3
	fMuOBOf4PjGXzW77RInb8r30TxhZV7m2O9.ETIzN5sRUSlshLKuUSCCNm7AD5Ew6WRXkDrLMsX.W
	nl.xUlJMLyE8wtZY_6_CzxrkJF7C17o4wdmq3FdqZ3AK_9bOOeYK2aSMPxB_oIkHUn.KomlYrfcL
	EmCFlSKJ3EYKa.l43cF6qN_rRXD7tHzgAsTD_x14YlljfVPRVac3IEhh7_reb5d7lrQ_CUIxd.G5
	HZbzg
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.ne1.yahoo.com with HTTP;
	Fri, 30 Apr 2021 22:11:02 +0000
Received: by kubenode540.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID cac417b70f085bf3f94aaabcbd004be9; 
	Fri, 30 Apr 2021 22:10:58 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Thinking of getting a computer to install Linux on any
	suggestions?
Date: Fri, 30 Apr 2021 18:10:54 -0400
Message-Id: <1AA10813-500B-446C-889D-587A16D05321@yahoo.com>
References: <CAJ1g4g_+5FD2UAG_6G7xVLL__LrbFm2_ouwYTHHPnnEwNs5mug@mail.gmail.com>
In-Reply-To: <CAJ1g4g_+5FD2UAG_6G7xVLL__LrbFm2_ouwYTHHPnnEwNs5mug@mail.gmail.com>
To: blinux-list@redhat.com
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b3VsZCBzdWdnZXN0IGNoZWNraW5nIG91dCBTeXN0ZW03Ni4gSGFzIFVidW50dSBvdXQgb2Yg
dGhlIGJveCB0b28uCgrigJwgTmV2ZXIgYmVuZCB5b3VyIGhlYWQuIEFsd2F5cyBob2xkIGl0IGhp
Z2guIExvb2sgdGhlIHdvcmxkIHN0cmFpZ2h0IGluIHRoZSBleWUu4oCdIAp+IEhlbGVuIEtlbGxl
cgoKPiBPbiBBcHIgMzAsIDIwMjEsIGF0IDEyOjEyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79PbiBU
aHUsIEFwciAyOSwgMjAyMSBhdCA3OjE5IFBNIFBhdWwgTWVycmVsbCA8bWFyYnV4QGdtYWlsLmNv
bT4gd3JvdGU6Cj4gCj4+IFRoZXJlIGFyZSBxdWl0ZSBhIGZldyBwbGFjZXMgdGhhdCBzZWxsIGNv
bXB1dGVycyB3aXRoIExpbnV4IHByZS1pbnN0YWxsZWQuCj4+IFNlZSBlLmcuLCB0aGlzIGxpc3Q6
IDxodHRwczovL2xpbnV4cHJlbG9hZGVkLmNvbS8+Cj4+IAo+PiAKPiBKdXN0IG5vdGljZWQgdGhh
dCBsaXN0IGlzIG1vc3RseSBmb3IgRXVyb3BlYW4gc2hvcHMuIFRoZXJlJ3MgYSBtb3JlCj4gY29t
cGxldGUgbGlzdCBoZXJlOiA8aHR0cDovL2x4ZXIuY29tL21vZHVsZS9kYi9pbmRleC5waHA/ZGJu
PTE0Pgo+IC0tCj4gW05vdGljZSBub3QgaW5jbHVkZWQgaW4gdGhlIGFib3ZlIG9yaWdpbmFsIG1l
c3NhZ2U6ICBUaGUgVS5TLiBOYXRpb25hbAo+IFNlY3VyaXR5IEFnZW5jeSBuZWl0aGVyIGNvbmZp
cm1zIG5vciBkZW5pZXMgdGhhdCBpdCBpbnRlcmNlcHRlZCB0aGlzCj4gbWVzc2FnZS5dCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDCr1xfKOODhClfL8Kv
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

