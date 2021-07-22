Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C06743D26C8
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 17:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626968161;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fhhFSOwiPF2h2nyLW6FD9VmJAOBXiiCerh4M2dKAWjI=;
	b=AS6u57toB5lYQqEqJ7XgppUatrE00WWZD9g6s5TXspirmT9EwXZI6f5OC7HJBovlDqIIRg
	kvg9PGnHxJwiELqKCYwi017V8qTJX4NsOKSYMhfzCfO9yRhokVsnsIqGzxFzlSdnW+fbkh
	B7tS14KhPnTRHQXWvy1F5IW4SKMNCZ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-bRWg15kBMhu2SdOQ6n3Rkw-1; Thu, 22 Jul 2021 11:35:59 -0400
X-MC-Unique: bRWg15kBMhu2SdOQ6n3Rkw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D22D2100E420;
	Thu, 22 Jul 2021 15:35:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB2E660C2B;
	Thu, 22 Jul 2021 15:35:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAC724BB7C;
	Thu, 22 Jul 2021 15:35:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MFZoFA023805 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 11:35:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C747F21623BD; Thu, 22 Jul 2021 15:35:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C28EB21623BC
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:35:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9403A18A01A0
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:35:46 +0000 (UTC)
Received: from sonic305-20.consmr.mail.gq1.yahoo.com
	(sonic305-20.consmr.mail.gq1.yahoo.com [98.137.64.83]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-173-QPqmXBF1PlyhictF9bvsJg-1;
	Thu, 22 Jul 2021 11:35:44 -0400
X-MC-Unique: QPqmXBF1PlyhictF9bvsJg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1626968143; bh=4o3ZdGI3Pv1LGNAGPPgc1WFszBsheLqBHNYfPSPXLm5=;
	h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
	b=qw88Y66AK23NJLAXC+lejJuKMjY7ZE9ctsVw/WsYX6QWr1RoalGp5HV1BOE7ryoFPIm2BnZQlWy/KHAh4R+r7DYQyTDYNb5bzjy3Lr/WS2LG4fOFh3Sr/hCcVTQaGO+qrDOyVBQBttWzw39VyCapbSE2e85gc6F8hHoDWDPncogqJLYd6WomwVg1j2pJHcBxnQoQKKd3LZWNRyXl/UHVE+BveYcYHkjBfInNT2REYEo1zQ8I7uJzD/jjekyW5v/5NlYvt6pmUUUZm1DDD6ntx7AxSpGTyUd4gyftna5/tzG1Ea3QFJlDZk4kj+2wdbn6kkrwpt80WLjlfnbGLnvnJg==
X-YMail-OSG: upRWLPYVM1k1yKOi8G5aSJr2OlwHT4fiC1toz5kvCHEYNMCz2BXoGhuaoZqagl8
	IL7yaO9AvUK6vw0TvcTsEt_y9B6tfJqeK6RlGserlvGBvt2uIerwxw0rVdgBK65M1s5hmXI3Oj17
	E8TzcJZmTyCK8EDFqT9onba6htxeW_kB8EZC9nwY0xu_reFf2B_vEAfAUBdw0bYT08Zfh9iw8Sww
	QxDhSJejmzTiYblFoOYDU3knU_iCBRndhmzTds8.bDXkTB3sPYcUjrHCLfM057WrbhooL3tr6yhZ
	QJIfsnHChSlMgHhvZ.30U7Hq2q3zF42FfbKouGuY87WZSBW5nVS1KqxpmwQ57dRQxRtKflM9XmHE
	TwdUT5iNBybyRbK8YPBuIsC8hYaBwy7W5fY0vMsEBpKdRDgTgLq2TAlzT6B5GojSrvtQ3PC9m0dP
	4CKB4U4lEvzmy6WexDW1ESYdgq9XV3T7MXrBuM.16AmdO5DoMQ6kSKWaAPoO40Hkl0IgKfa604kP
	oJZNTELg1xVZKKexqBlsp_s8UUw.xHIicerLBThIrDhilIwNQUZaGsBOUK6r65Ljuy_Mhoifygf2
	_87nkFsyW.E8yXChkhcSvCPABer5KuY1.fSQjIIfo_5vfUZA.i.5xEoqrKn2wRTlffLs_3W0Rv5P
	Ky_iPeTgOLkd.VgZKXYgI.LDGwGDXCXyAqWHPXjzG5Iqp.GbCERCXC_Q16FOf3Z0oSp2CfWFUNw4
	DjzSpWdZ5WLok9pIPq_tMSIdvBOU0WO5bqo_G3pDQAnwzE4VcVm_dfl9HU8cxPasWuqgl8D1H4se
	5eRKrbDcBPeB_oKok_XqFP95ND.d6d2OTxaXg6H9UaH4UQE1RwJWrEebZzcmG.3SQl_r3d.xWhMA
	PlwTQe4RdySwj3Bg2z8LV45MmvGLh14gjrAUU5PPqzzT4geaWrXkAY_.e18p..4V6SxWGOAu4ktm
	AIC0rNZau3JowrM_s8u7qrZ1MVglhpO3ulYClLzz3XT7V3nHRAMkYPfEYFCYFyxQr_GSxd8zJBRp
	4CE6aaaeUK8yxv.NBQiAGD6x1695URMTmf3TpXDryL2168xNxztk1fJnnQDUy4DXvwtbqR71uBc6
	vWrIPWNNoTIyTfv7oiB0TBWX2XJyIhbfQYPfBqtEKCfusDWgu082PQeEGqNRiLUnuNo4dzC084jh
	9Ar7lITxWRxmCaV5mPttSw_EyA8EpnHUv_SOh.gcOVani1ErcHBAQELYaSYytHyvClaAL5p11TUH
	rZkl0dOK8jkva0VQEGbWQTwfpaMmIl2SlHYO4DnTc7tO3xhv3G21HntvuRO0nPwvtJQS_PviFGI7
	o11vq9WgmrBGfuJcv._mdy5D1KtNNyQO1TUJec7rJjwf1AXPghN6Ex0eeyOFm.O..wy_s9dw0FP_
	UVdAvH9YtcdEE1gqysWSTqcQooJvsiuEBcG0Kj4YTAKlXx91NQ5vJWLIh_Lt5RgbMzo9eU9wodDS
	359jYh2h451ojS0IPBv4mYq5kgXQU0CIqjykPwUypGnuc_SUlWcoFQsUFyKAbDa9exAtBiHwDBwi
	3nNWlq4Rop2ybwBbKg9JPiBTlXFy36k2kht5HTjBLCnEd4EuBMDudtgEgRO29cG26d7an_llLeWm
	eTvo6Dm10382penl212IPbYXz2ZQxfrrGxZ9NEQ34vfiIPK2_TcMk7hHV5WWhFDA06nj0QGUKVCp
	vQC2V5xChsL1jhmwx6uBnS_vg_mt1OrDWYr81WLTFUWTKsmprAKibVjc_4VJn4gKxQaG8KWZ0n_9
	I2FXBZebjR9jG2Qjc.4hanhH42IrH6pnSAXq83.XRrTzDokIGR5SAm7XSkK6ucjg6udEuCp0luYi
	2b_vVJEJKE_iKq3n1j9466uJIpfoX9HUglFq8S3QlevXQ3J2cEI2WRBDHjxqAvovvqX1vmPrB8SF
	zEMRxfS7ZasxXAvJn.t6yU2sStASfNUjB_1GmMbpCSnyJC7LGLGolYKMjYoQbIqZSzXPVpl0cgHm
	zFRZoolsvivCi4WnvM8U7CLgj4ochLU57wJJD79WyfZgJG3e.U8zRtcSG6pN27S.5XM5d6wKn3WQ
	fgPW.V.2pBSvfnXwU3hqdRbplLVqvvRtYytewPTDgsCpjRZYTGtUq2HFPCgY5wqi1ZeNJEp.YfuR
	Q3yHVJX8I0I0Y9Bbr0qW6iwByWCnkpXlvPTgykLxPh8ZgVhNnqD3UxO1ekEOk2WfzMwnbgTiKeCA
	4ZRYx89RzCwDQaD0xwPuh07.Fevd.6jJwMRLGfKfRPwos.I10k_BwE9rd4B.GSz1QTlIVRd7l0Zu
	C1IIgHGYR3GGbZ1wrbUQ8AiGTgNde5cDtchXEFwlXjxbDhKlXcIajtGolz36Vjtg_uUFcqy6795b
	NpL2wM1ZN1tLAtsk-
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.gq1.yahoo.com with HTTP;
	Thu, 22 Jul 2021 15:35:43 +0000
Received: by kubenode537.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID fd357ef99d143daed749873a82ac9409; 
	Thu, 22 Jul 2021 15:35:39 +0000 (UTC)
Subject: Re: Thunderbird on Slint
To: blinux-list@redhat.com
References: <ec2eb69c-aade-21c0-bc11-5d462376cd65@gmail.com>
	<0a32310f-3412-ea9d-0354-d9f7a94f91fd@slint.fr>
	<5f80b66c-7aa3-07cf-d323-344373699b39@verizon.net>
	<dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
Message-ID: <84281810-77a9-12f6-7214-c7b58d7c5e08@verizon.net>
Date: Thu, 22 Jul 2021 11:33:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIQoKCkFsCgoKT24gNy8yMi8yMSAxMToyMyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSBBbCwKPgo+IHF1aWNrIGFuc3dlcjogYWZ0ZXIgZWFj
aCB1cGdyYWRlLgo+IFRoaXMgaXM6wqAgdGh1bmRlcmJpcmQgLVAgLS1hbGxvdy1kb3duZ3JhZGUg
KG1pbmQgdGhlIGNhcGl0YWwgUCkKPgo+IENoZWVycywKPiBEaWRpZXIKPgo+IExlIDIyLzA3LzIw
MjEgw6AgMTY6NTcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPj4gSGksIERpZGllci4KPj4KPj4KPj4gUXVpY2sgcXVlc3Rpb246wqAgc2luY2UgSSBpbnN0
YWxsZWQgYSB2ZXJzaW9uIG9mIFRodW5kZXJiaXJkIGFjY29yZGluZyAKPj4gdG8gdGhlIGluc3Ry
dWN0aW9ucyB5b3UgbGlua2VkIHRvIGxhc3Qgd2VlaywgZG8gSSBzdGlsbCBuZWVkIHRvIHVzZSAK
Pj4gIi1wIGFsbG93LWRvd25ncmFkZSIgdG8gYnJpbmcgaXQgdXAgYWZ0ZXIgYSBuZXcgaW5zdGFs
bD/CoCAoSSBob3BlIEkgCj4+IHdyb3RlIHRoYXQgcmlnaHQsIGFzIEkgZGlkIGl0IGZyb20gbWVt
b3J5LikKPj4KPj4KPj4gVGhhbmtzIQo+Pgo+Pgo+PiBBbAo+Pgo+Pgo+PiBPbiA3LzIxLzIxIDM6
NTcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIaSBC
cmFuZHQsCj4+Pgo+Pj4gc2hvcnQgYW5zd2VyOgo+Pj4gaHR0cDovL3NsYWNrd2FyZS51ay9zbGlu
dC94ODZfNjQvc2xpbnQtMTQuMi4xL3Rlc3RpbmcvUkVBRE1FCj4+Pgo+Pj4gRGlzY2FyZCB0aGUg
Y29tbWVudCBhYm91dCBTcGVlY2ggRGlzcGF0Y2hlciwgYSBmYWlybHkgcmVjZW50Cj4+PiBvbmUg
aXPCoMKgwqDCoCBhbHJlYWR5IGluIFNsaW50Lgo+Pj4KPj4+IE1vcmU6Cj4+PiBodHRwczovL3Ns
aW50LmZyL2RvYy8KPj4+Cj4+PiBDaGVlcnMsCj4+PiBEaWRpZXIKPj4+IC0tIAo+Pj4gRGlkaWVy
IFNwYWllcgo+Pj4KPj4+IExlIDIxLzA3LzIwMjEgw6AgMDg6NTMsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+PiBIaSBhbGwsCj4+Pj4KPj4+Pgo+Pj4+
IEkganVzdCBjaGVja2VkIHRoZSB2ZXJzaW9uIG9mIFRodW5kZXJiaXJkIGluIHNsaW50LCBhbmQg
SSBzYXcgaXQgaXMgCj4+Pj4gYWJvdXQgMTAgdmVyc2lvbnMgb3V0IG9mIGRhdGUuIElzIHRoZXJl
IGEgd2F5IHRvIGdldCBhIG5ld2VyIAo+Pj4+IHZlcnNpb24gb2YgdGhlIHNvZnR3YXJlPyBJIGtu
b3csIEkgY2FuIHByb2JhYmx5IGdldCBpdCBmcm9tIGdpdGh1YiwgCj4+Pj4gYnV0IEkgbXVzdCBh
ZG1pdCwgaXQgaXMgbm90IG15IGZhdm9yaXRlIHdheSBvZiBpbnN0YWxsaW5nIHNvZnR3YXJlLgo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

