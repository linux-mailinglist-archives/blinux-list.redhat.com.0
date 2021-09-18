Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 67B384108B4
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 23:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632000635;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AzUyQ84c+D7jNbwIJTOcO9SUfJTNC8Ei6Unm+atRD84=;
	b=SkJgT6NwBbiu/fT8DS09Q96bNdvqoU9G4uxF3GNg/+O3GALk6olQlNI9RDM2j3ZwwPBUGK
	idTQfqqC15RTGcIrzge6doRCUK1Ok/mZWHz35qrZ1mNCiH5tbzW3Kxjkcp3KxdhuG26Nrm
	VcGsFNBTI1XLYGtHNXZd9tLjtnxnLwo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-svH6CGRmPwS8btq-SBmi-Q-1; Sat, 18 Sep 2021 17:30:33 -0400
X-MC-Unique: svH6CGRmPwS8btq-SBmi-Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B36411084681;
	Sat, 18 Sep 2021 21:30:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D94366A255;
	Sat, 18 Sep 2021 21:30:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B3D3D4E58F;
	Sat, 18 Sep 2021 21:30:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18ILUDOv025300 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 17:30:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A675F2164DD9; Sat, 18 Sep 2021 21:30:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A142A2164DD1
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 21:29:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F42A8011A5
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 21:29:59 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-548-aRyk1cZFOvKcHWdmcuMS2w-1; Sat, 18 Sep 2021 17:29:57 -0400
X-MC-Unique: aRyk1cZFOvKcHWdmcuMS2w-1
Received: by mail-lf1-f51.google.com with SMTP id g1so49222259lfj.12
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 14:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=uaCdX05G8Tm3AgovdcyrPwN1LjBQadxXx8MoCJS2QY4=;
	b=kXgyHa3WhtFok4HHE6nZKRSz+zYN+V0wHg59zBu5tO+Z/hlowBObXSyGVo2d/FF3jY
	8QH7pssYV4eU3RRGI8GVhl9hhMk4CZkwNa1ZYsqHBTFKotXotRCFmwXgNwwfuoiPzOt/
	JSQYGrDUeLRy2+aLDZUxIfUh6Tbc33vu2A9XjQq7YdR06WBbrh1ohayc2XSvkNmzpwI/
	nOi+9vk/FvdxqB0yYx3OpSk5GBzq6JSXwJI0RF2yoIPP/4Ngoy0prCUkPtJejZSmUPqK
	A1O4MlTjyIa62xNzMZEyIRxlMHreUcvbs6zXfLS4lbTS9C0bal3yKU5zwpafjiZ6xqWU
	UsXg==
X-Gm-Message-State: AOAM530t3roDT8K5i+VD62qSNW2JF0n/QBzLLoLY65vsT6xaPAXDpey2
	gt0uFRkqUxcT5RI8qwPKg6j+E/qKGM4=
X-Google-Smtp-Source: ABdhPJyQN9B0Fu0SzxEqhVstlya2uP7lu58z9sIPLMfzIjjYZhrejiBfcmCIi93b5Pa9NzhBDY7q8w==
X-Received: by 2002:ac2:4e06:: with SMTP id e6mr1377999lfr.264.1632000595137; 
	Sat, 18 Sep 2021 14:29:55 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id h7sm858889lfv.95.2021.09.18.14.29.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 18 Sep 2021 14:29:54 -0700 (PDT)
Date: Sun, 19 Sep 2021 00:29:52 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: rhvoice broken on Arch
Message-ID: <20210918212952.kur7yxxzsbwoyina@alex-pc>
References: <YUXl/70G69mzJqvV@rednote.net> <YUYJPmtUN850ISXK@rednote.net>
	<20210918175433.vxj2bqpztnz67iqx@alex-pc>
	<YUZRaJrtj5nH3p4h@rednote.net>
MIME-Version: 1.0
In-Reply-To: <YUZRaJrtj5nH3p4h@rednote.net>
User-Agent: NeoMutt/20210205
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBTZXAgMTgsIDIwMjEgYXQgMDQ6NTE6NTJQTSAtMDQwMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwgQWxleGFuZGVyOgo+Cj4gTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6Cj4gPiBPbiBTYXQsIFNlcCAxOCwgMjAy
MSBhdCAxMTo0Mzo1OEFNIC0wNDAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOj4gPiBEZWFyIEFsbDoKPiA+IC4uLgo+ID4gPiByaHZvaWNlIGlzIG9uZSBwYWNrYWdl
IHRoYXQgd2FzIG5ldyB0aGlzIHdlZWsuIEl0J3Mgbm90IHdvcmtpbmcgd2l0aAo+ID4gPiBTcGVl
Y2gtRGlzcGF0Y2hlci4gV2hlbiBJIGRvIGEgQWx0K0YyIGFuZCB0eXBlICdvcmNhIC1yJyBJIGhl
YXIgdGhlCj4gPiA+IGR1bW15IGRyaXZlciBhdWRpbyBtZXNzYWdlLgo+ID4KPiA+IGl0IHNlZW1z
IHNvbWVvbmUgZG9lc24ndCByZWFkIHRoZSB0ZXJtaW5hbCBhZnRlciB0aGUgdXBkYXRlLCBkb2Vz
IGl0Pwo+ID4KPiBHdWlsdHkgYXMgY2hhcmdlZC4gQnV0LCB0aGF0J3MgYSBsb3Qgb2Ygc2NyZWVu
ZnVscyB0byBwaXBlIHRocm91Z2ggbGVzcwo+IGV2ZXJ5IHdlZWsuCgpobW0uIEkgYW0gdXNpbmcg
dG11eCBhbmQgaXQgbWFrZXMgdGhlIGVhc2llIHRvIHJlYWQgYW55IG91dHB1dC4KSSBzdHJvbmds
eSBhZHZpc2UgeW91IHRvIGRldmVsb3AgdGhpcyBoYWJpdCBmb3IgeW91LCBpdCB3aWxsIGhlbHAg
dG8KYXZvaWQgcHJvYmxlbXMgaW4gdGhlIGZ1dHVyZS4KCj4gSSBvbmx5IHJlYWxpemVkIGl0IHdh
cyB1cGdyYWRlZCBhZnRlciBkb2luZyBhIGxzIC1scnQgb24KPiAvdmFyL2NhY2hlL3BhY21hbi9w
a2cvLgo+Cj4gSXQncyB0aGUgb25seSB3YXkgSSBrbm93IHRvIGdldCBwYWNtYW4gdG8gcmVwb3J0
IG9uIHdoYXQgd2FzIHVwZ3JhZGVkIGluCj4gcmV2ZXJzZSBjaHJvbm9sb2dpY2FsIG9yZGVyLiBN
YXliZSBzb21lb25lIGtub3dzIHRoZSByZWFsIHdheSB0byBnZXQKPiBwYWNtYW4gdG8gcmVwb3J0
PyBJJ3ZlIG5vdCBzdWNjZWVkZWQgdHJ5aW5nIHRvIGdvb2dsZSBpdC4KPgo+ID4geW91IG5vdyBu
ZWVkIHRvIGluc3RhbGwgdGhlIHZvaWNlcyB0aGF0IHlvdSBhcmUgdXNpbmcgc2VwYXJhdGVseS4g
Zm9yIGV4YW1wbGU6Cj4gPiAjIHBhY21hbiAtUyByaHZvaWNlLXZvaWNlLXthbGFuLHNsdH0KPiA+
Cj4gWWVzLCB0aGFuayB5b3UuIFRoYXQgZG9lcyBpbXByb3ZlIHBlcmZvcm1hbmNlIGdyZWF0bHkh
Cj4KPiBQUzogV2hlcmUgY2FuIEkgbGVhcm4gbW9yZSwgZm9yIGV4YW1wbGUgb3RoZXIgbGFuZyB2
b2ljZXMgSSBtaWdodCB3YW50Pwo+IE5vIG1hbiBwYWdlLCBub3RoaW5nIGluIC91c3Ivc2hhcmUv
ZG9jIC0tIHNvIHdoZXJlPwoKbG9vayBhdCBPcHRpb25hbCBEZXBzIGluIHBhY21hbiAtUWkgcmh2
b2ljZSBvdXRwdXQuCgo+ID4gPiBTb3JyeSwgQWxleGFuZGVyIQo+ID4KPiA+IEkgZG9u4oCZdCBr
bm93IHdoeSB5b3UgYXJlIGFwb2xvZ2l6aW5nLCBidXQgaW4gYW55IGNhc2UsIHlvdSBkb27igJl0
IG5lZWQgdG8gZG8gdGhpcy4KPiA+Cj4gRmFpciBlbm91Z2guIEkganVzdCBkb24ndCBsaWtlIGJl
aW5nIHBlc2t5LCBhbmQgSSd2ZSBiZWVuIHVuYWJsZSB0bwo+IHN1Y2NlZWQgcmVsaWFibHkgd2l0
aCBlc3BlYWt1cC0wLjkwIGZvciB3ZWVrcyBub3cuCgpJJ20gYWxzbyBzb3JyeSB0aGF0IEkgaGF2
ZW4ndCBiZWVuIGFibGUgdG8gaGVscCB5b3Ugd2l0aCB0aGlzIHlldC4KCj4gSSdtIGdsYWQgdG8g
aGVhciB5b3UgYW5kIEtpcmsgYXJlIHdvcmtpbmcgb24gdGhhdC4gQWxzbywgYXMgRGlkaWVyCj4g
c3VnZ2VzdGVkLCBJIHdpbGwgc2VlIGlmIHJlYnVpbGRpbmcgcGNhdWRpb2xpYiB3aXRob3V0IHB1
bHNlIG1pZ2h0IGhlbHAuCj4gSSB0cnkgdG8gYXZvaWQgcHVsc2UsIHNvIGl0J3MgcG9zc2libGUg
SSdtIG1pc3Npbmcgc29tZSBwaWVjZSBpdCB3YW50cy4KCm9vIHlvdSBkb24ndCBoYXZlIHB1bHNl
IGluc3RhbGxlZD8gdGhpcyBpcyBpbXBvcnRhbnQgaW5mb3JtYXRpb24uCgo+IEJlc3QsCj4KPiBK
YW5pbmEKCi0tClNpbmNlcmVseSwgQWxleGFuZGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

