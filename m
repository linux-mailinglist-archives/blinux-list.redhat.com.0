Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E0345AB56
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 19:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637692524;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z5e4UJIRVfsZ51ggOT9l4vA8lrqopKT6TRK/Z+/DyqY=;
	b=DKOQTRG9fWfwu4tCiXLtcUptyUn3g8WxgiqnS36bBP3TgPpwYZAsC95e0h7Uvc3ur5BMdn
	DFD/Fq2sVrHSaqMgiSNU0gGjWCepCjrXVDdGPqUw2PssRT4hcNqunq4ugfYke8i8SIV1U8
	B8SXEsxl/7SY9XPR7XGZq1+1IZ+RMSs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-158-ygN9lr7lPuWvrQ-zgHPMow-1; Tue, 23 Nov 2021 13:35:21 -0500
X-MC-Unique: ygN9lr7lPuWvrQ-zgHPMow-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B2AC802C87;
	Tue, 23 Nov 2021 18:35:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90C905D705;
	Tue, 23 Nov 2021 18:35:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 706BA1832E7F;
	Tue, 23 Nov 2021 18:35:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANIZ7tX031722 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 13:35:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 63E5A2166B25; Tue, 23 Nov 2021 18:35:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EAEF2166B2D
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:35:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AA1B181E063
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:35:04 +0000 (UTC)
Received: from sonic303-25.consmr.mail.gq1.yahoo.com
	(sonic303-25.consmr.mail.gq1.yahoo.com [98.137.64.206]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-334-MZlGO6P7P5eOkYlbbhSVSA-1; Tue, 23 Nov 2021 13:35:02 -0500
X-MC-Unique: MZlGO6P7P5eOkYlbbhSVSA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1637692501; bh=GHLHdnRpg2/KRQtsaROfvA8jQjT4AMHlt1g5g/a7TVI=;
	h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
	b=L6V18BdJ/DuQCpG71oiXqIFrbbsC3N+V7SKCgmQvZhtfnDpplHxOV4D4QvaSjETBWdUeHTSbLA0lNEvi+/Lrudhdftz+Z4JZozRqmaf6yLZDWwLi2g05M9aYiZ/tcqUPEt/KO5N+WxqCRkhruNZ/ImB99pZkfmJEJuXxnRO7mUTg8/eZV4T9W92RhrahownORtftEsyG19YeFAtkOcVZUvFHBAzUG79Ml7dy/v75NbU5ZoqGwv8tJHyB9K/TRZ1jZG7um/AEXRUhA2w7OYCd+OCtUFaAbtz6apMHR+hlxCJL0i2/VkEg6PfQZdbxFYUDkedHkUxAqXwa6nyEDQbbVw==
X-YMail-OSG: fMCPgVkVM1kEVBJyDkB0FPsXo6oGS9Rv6RWk17XOdHh9GzOmmx9wZ0eIKPIGrh5
	NUlPpNN0MTkJOhwnKJAg8Jmc6EBF6OhTv9OOILh0M4t71mDfjqSL5Bk9fTMwkIKCsz9PWeWumOIz
	_anZO2nLqYsarWr27mfqNVoK0JgfHfxgN54QCwBgCtnikjnWwLxgDVsbPZ7t9ThasDFAYoGjuOuI
	nxu_0lPAhDvsQuGYvIzm_s3GAlX0xlf8Ut5sN6Th_VXTg5g9yg1rCMWeIjY4haj9iJfUOJ9igbZw
	d9cr9wEzWDOD0KZrhzk5B6VBe9F6_5ad37OGusbIjUoInJfFLyRVuCnjLcJ4D.xefSDgbRjzRwTf
	9MhlCyJBglETOa10FL2ZxbNBBsJD_NYKzJaEokzV_4v5wYFlEhDRtvSAvF4DqGsJcz_TLJ9p05u9
	qlCqstVf7RuA5VXbW3RyYXeTgAKzNxD6g5wy4G4vhwxp8CA0zXp2ruoUEjibo3UecARH.hsRuNcD
	cntIouHhKYKpCe8I54jMY6Tor1RZILH1FemEXg4Pj.crRHVYEywQ6J9auYdCvAZs7rWwA2FpSmBR
	xDujwPf5tP_9c7rb61MdQqAa0nwZVJKvlggm..VtV2Nb1eRRWPn6VYtGwjZ.czJGz1ISqzDMthNj
	pJz6lVuXu_z9ppCVa4I_Uw5T5PY1eOD2hgixCXOjdWI0aLcJZrBTtPbI1ko7i5mvOJaD3Qgxd0SZ
	5FDDi3ousfFbUwPEgHuOz4QYtyBD03cfweK5oe0x1JYED9qJIJ9toaWIJoPmr6uwvBuyWLudSx_c
	GO.9NbK1BVay7sUqyz_W6MZQe3Rn3XVtoJ5UseYhB5roVVFSQ6lEk0ZT_3PCkxVghx3yagCilQdx
	fCA8uQcLotAZCdEwTdx6ioMntT51lx4AVDqjkj9r39FcnyCQoJjQBpCvTrM.wIYGB0c5eblmnJ7o
	poM_YMslVmjLP8Tngh2EsQswOm6hh4hOMW46boXSCbhjStsnJu1CJtbnEiNgECgrdP1O2.JDPyMT
	pO7pyxM0flkdmaaStOGLzcmWleuFK4aJ9xS7CeCogEuj.rhkL2ni2W5z8ccX_2qPpXSwI6YcdGFo
	pJ_CuGB8d7aq6QisZyvw93xUq0aPu6SaPz0NHXEQWwT_lfsRzCmQIT.aWI1bDT3YS8gRd.QVDQod
	TRAWrjPUvwO4hS5QaHzazA.0YWfVFKZxpE9DYU4Xwz1VrlrLt3HsCxyCwLdt1aQR2n_5viyUqu.M
	nidxODhC70ADm2AeyDeiF5ww7RoYPA.0j3SEWiFybdHbXC.yLVDDLudY4VgsI8xaFWRLozXv5Dh3
	dR68f4vFgD_WRuhl5zofwvf7nSSNeFexHyK_eXWFj4vT42JjhhegES9oY3okoD.tOle4qIjA1UEz
	VCRR9ipnXC5UpG07vWgeiwsIqcMaoJYq3vVpjsuYJLKNPRqEYUjPQrn2EZOw46XLjxAEIsQDxm2r
	m5QVu_NNlnF5HgU8zXXnYuQ3RD_i18fy3bzNSi.dANAA3f5JlguydMyqMWJyulxPAarDaByh8WnP
	hkisqcdVGvjR3_JhQPaSDqH0LoOTTlTPEsUeSgRjFh0xt1MvQfPlObUxaHE54eB8ypDd4b5bANsX
	JAvLGWznZogso112fcRUsuAs1eA1juqhb9nWM_HLHodr7N7AeHsHo34NOutMiuSeqkZox_RSRkHN
	06eS4o5LN.lheYOR2PMp7DcuMGvCiTDYQ3yMG6xH9zXhB2VNQazpTkIZTUcm3rzeXgX4aBL10rK8
	gOURzlHmAcaQXuAKTuhB8nxN4rAW.IqbTX9Sxwh5df7eWEPXxmYXDSAeVFS8eBTVnf3rszapDhgE
	sk39HMQ3F9xs8UOBb1CfL9KxZdnYQtgqnFJbj_pxVgh0LWmoOLcvx9SvyB6XyOcfP.ftYuwTg.Y9
	YOqqSBol4lDDcJModLX3C9hYGP1llfsU6.o6SqqCKvmpvBLGyMNySFdTdc.1qnbd9QptqxHRkgEY
	7t26KzZ4pP7h.wB2AkXZYLpRWU.rmplUMBn.o13jscUed1CO9gG4IycxGKAv9uDO93X7B_JkSj1W
	LTE3ya_dk6h543kqaRyweiQIIgfXimOpEpYx8KbXQ6ixYWr9K34nPgq3cqffEmQOPmcV2o.TqW5S
	5DazOBuMKNUC4RaGBoMjNmnROdaRBDVono6.qPnQZDHrqV7V_iOjM14WXY4Nr09W4h3hF5r_E6t_
	NYpVYKtmGqOR6p1lnM3hlRz31MmHueqgu3DRjFPBiefdcM2laahX3vg--
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.gq1.yahoo.com with HTTP;
	Tue, 23 Nov 2021 18:35:01 +0000
Received: by kubenode550.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 6d59f74aadde9c65cfd636792e32e3b5; 
	Tue, 23 Nov 2021 18:34:56 +0000 (UTC)
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
Message-ID: <52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
Date: Tue, 23 Nov 2021 13:34:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBjb25jdXIuwqAgSSBoYXZlbid0IHVzZWQgRGViaWFuIGZvciBhIHdoaWxlLCBidXQgbGFzdCBJ
IGtuZXcgaXQgaGFkIAp2ZXJ5IGdvb2QgZG9jdW1lbnRhdGlvbiwgdG9vLgoKCkFsCgoKT24gMTEv
MjMvMjEgMToyNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiBZb3UgY291bGQgYWx3YXlzIGdpdmUgRGViaWFuIGEgdHJ5LiBVYnVudHUncyBiYXNlZCBvbiBp
dCwgYnV0IG15Cj4gdW5kZXJzdGFuZGluZyBpcyB0aGF0IG1vc3QgcGVvcGxlIHdobyBkaXNsaWtl
IFVidW50dSBkaXNsaWtlIGl0IGZvcgo+IHRoZSB0aGluZ3MgaXQgZG9lcyB0aGF0IHZhbmlsbGEg
RGViaWFuIGRvZXNuJ3QuCj4KPiBHcmFudGVkLCBpZiB5b3Ugd2FudCBhIHJlYXNvbmFibHkgdXAt
dG8tZGF0ZSBzeXN0ZW0sIHlvdSdsbCBwcm9iYWJseQo+IHdhbnQgdG8gZ28gZm9yIERlYmlhbiBU
ZXN0aW5nIG92ZXIgU3RhYmxlLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

