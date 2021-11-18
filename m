Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D56456637
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 00:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637276852;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3cjsqf7+Z7F+5zxm6Ev9yYpXhKY9j3peH8w+jFyY794=;
	b=ETW072mWfLay5KHgSJkbll1QTo59TPCnrE7SJOUmYqOlWKtxgG7wJTyMJDuHgBbh6nUoOD
	GAXd2XiCjlnRRSHue7AaIlBRl0eiChbi+QmS5Rl8GrAYDaVOmi/PVr1S2TNb/xAZNnTJUT
	YgnfCPMfi4vwSsj2hGYuqPjAPFTVcoE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-225-BUKszHd0NPSdMp15rk2BLQ-1; Thu, 18 Nov 2021 18:07:28 -0500
X-MC-Unique: BUKszHd0NPSdMp15rk2BLQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD5D3A40C0;
	Thu, 18 Nov 2021 23:07:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6811C3AEA;
	Thu, 18 Nov 2021 23:07:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC3DD181A1D1;
	Thu, 18 Nov 2021 23:07:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIN79Kt004584 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 18:07:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4BAE9400DFBC; Thu, 18 Nov 2021 23:07:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 45E2E4010E8A
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 23:07:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D64D805B0A
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 23:07:09 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-258-Ta0WUCJrOZOgFJ4QzTJ3XA-1; Thu, 18 Nov 2021 18:07:07 -0500
X-MC-Unique: Ta0WUCJrOZOgFJ4QzTJ3XA-1
Received: by mail-qt1-f182.google.com with SMTP id l8so7790049qtk.6
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 15:07:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=l8YMYmB/lqP3bdHVGGqxcaD4tj6CJnEMNin9LOi25ps=;
	b=ummOJv4jSp1ZY78H7W/Dg3FswjzGrLQSdTr1k0QeT183nCFtp/Ov9d2Zh8l7+8Ae49
	Wvz/1bKXbKNOcoQS1aSDYmeWAUf++RN5B3hhmCRpQ9D2GVaZ+xJK48NbwxknXZKbqjIa
	C3TC/yJc5rxQ0XmMt3tQPJ0K8UCpIl/iiK9jB5amw2uz4kyLXWzHZF7pprEd+am9M37p
	zx+grAku+P8E+DtZhIso58FeB5ri5Z5m7Iq7kcgelv8a1pkIpEenpNiVGoGRqweZF6/G
	SPorAHCm7jJz8bB1VuXTSmcsP6PeKTB0dARjoj4qnRMgVd1GsMb9cuPKxGXQAfrtQ4WL
	1o3Q==
X-Gm-Message-State: AOAM530xl2IY5nBeX+JilI6M2yaI5x249m67lP9u7DNSMahmEa8+Uc5N
	VnQ9oLFStIy7WLy/T9tbQeyaMNF8b3RZWufI
X-Google-Smtp-Source: ABdhPJxa1JF02qQPMtS6GMscGQagliauxoSvheMzDkOAE5i4ydy40ch62GUBCplm3mPuDrr2CqCCJw==
X-Received: by 2002:ac8:574e:: with SMTP id 14mr1314141qtx.406.1637276826628; 
	Thu, 18 Nov 2021 15:07:06 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:50e6:7f05:4eeb:cb25])
	by smtp.gmail.com with ESMTPSA id a16sm599244qta.94.2021.11.18.15.07.05
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 15:07:05 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for Lennix distribution?
Date: Thu, 18 Nov 2021 18:07:05 -0500
Message-Id: <6F669B1C-20B6-45D4-A0E1-AB6A7D3C76B7@gmail.com>
References: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
In-Reply-To: <C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AIN79Kt004584
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBsaWtlZCBtaW50LiBJIHdpc2ggdGhleSBtYWtlIGl0IHBvc3NpYmxlIHRvIGluc3RhbGwgb24g
YW4gZXh0ZXJuYWwgbWVkaWEgbGlrZSBhIFVTQiBkaXNrIG9yIGFuIFNEIGNhcmQuIApDaGVlcnMs
CklicmFoaW0KClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTm92IDE4LCAyMDIxLCBhdCA0OjUw
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPiB3cm90ZToKPiAKPiDvu79IaSwKPiBXaGF0IGRvIHlvdSB0aGluayBvZiBMaW51eCBN
aW50IDIwLjI/Cj4gSXMgaXQgYmV0dGVyIHRoZW4gQ29jb251dD8KPiBJIGRvd25sb2FkZWQgdGhl
IE1hdGUgSVNPIGZyb20KPiBodHRwczovL2xpbnV4bWludC5jb20KPiBJIGluc3RhbGxlZCBpdCBp
biBhIFZNLCBCdXQKPiBJIGhhdmUgbm90IGhhZCB0aW1lIHRvIHJlYWxseSBjaGVjayBpdCBvdXQu
Cj4gVGhhbmtzLAo+IFJvYgo+IAo+IAo+PiBPbiBOb3YgMTYsIDIwMjEsIGF0IDExOjU3IFBNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPj4gCj4+IGhlbGxvIEkgaGF2ZSBvbmUgbW9yZSBxdWVzdGlvbiwgSSB0aGluay4g
V2hlcmUgZG8gSSBkb3dubG9hZCB0aGlzIGRpc3RyaWJ1dGlvbiBmcm9tPyBBbmQgaW4gZ2VuZXJh
bCBhYm91dCBob3cgbXVjaCBkaXNrIHNwYWNlIGRvZXMgaXQgdGFrZT8gSXMgaXQgc29tZXRoaW5n
IHRoYXQgY2FuIGJlIGluc3RhbGxlZCBhbmQgd2lsbCB2aXJ0dWFsIG1hY2hpbmUgb3IgaXMgaXQg
YSBsaXZlIGRpc3RyaWJ1dGlvbi4gSSBjYW4gcHJvYmFibHkgdmlueWwgdGhpcyBvdXQgYnkgZ29p
bmcgdG8gdGhlIFVSTCBpZiBzb21lb25lIHdvdWxkIGxpa2UgdG8gc2hhcmUgdGhhdCBsaW5rPyBU
aGFua3MgaW4gYWR2YW5jZS4KPj4gCj4+IAo+PiBEaXNjbGFpbWVyIHRpbWUsIGp1c3QgYmUgYXdh
cmUgdGhhdCB0aGUgYWJvdmUgaGFzIGJlZW4gZGljdGF0ZWQgdG8gdGhlIG1hY2hpbmUgYnkgbWVh
bnMgb2YgV2luZG93cy1iYXNlZCBkaWN0YXRpb24gc29mdHdhcmUuIElmIHRoZXJlJ3Mgc29tZXRo
aW5nIHRoYXQgeW91IGRvbid0IHVuZGVyc3RhbmQgdGhhdCBoYXMgYmVlbiB3cml0dGVuIGFib3Zl
LCBwbGVhc2UgcmVhY2ggb3V0IHRvIG1lIGFuZCBhc2tlZCBtZSB3aGF0IG15IG9yaWdpbmFsIGlu
dGVudCBtYXkgaGF2ZSBiZWVuLiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciByZWFkaW5nIHRoaXMu
Cj4+IAo+Pj4gT24gMTEvMTYvMjAyMSA1OjUxIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+PiAKPj4+IEkgaGF2ZSBiZWVuIHVzaW5nIEFjY2Vz
c2libGUgQ29jb251dCBmb3IgYWJvdXQgYSBtb250aC4KPj4+IAo+Pj4gT3JjYSBjYW4gc3RhcnQg
YXQgYm9vdC4KPj4+IAo+Pj4gVGhhbmtzLAo+Pj4gCj4+PiBSb2IKPj4+IAo+Pj4gCj4+PiBPbiAx
MS8xNi8yMSA4OjQ2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4+ICAgIEdvb2QgYWZ0ZXJub29uIG9yIGdvb2QgZXZlbmluZyBvciB3aGF0ZXZlciB0aW1l
IGl0IGlzIHdoZXJldmVyIHlvdSBhcmUgcmVhZGluZyB0aGlzLiBNeSBzdWJqZWN0IGxpbmUgcHJl
dHR5IG11Y2ggc2F5cyBldmVyeXRoaW5nIHRoZXJlIGlzIHRvIHRoaXMgbWVzc2FnZS4gSSBhbSBs
b29raW5nIGZvciBpbmFwcHJvcHJpYXRlIExlbm5peCBkaXN0cmlidXRpb24gdG8gcnVuIGluIGEg
dmlydHVhbCBlbnZpcm9ubWVudC4gRnJvbSBldmVyeXRoaW5nIEkgdGhpbmsgSSBrbm93LCBJJ20g
dGhpbmtpbmcgdGhlIGJlc3Qgc29sdXRpb24gaXMgc29tZXRoaW5nIHRoYXQgY2FuIGJlIGluc3Rh
bGxlZCBlYXNpbHksIGFuZCBhbGxvdyBtZSB0byBpbnN0YWxsIG9yY2EgcmVhbGx5IHF1aWNrbHkg
aWYgbm90IGRvIGl0IGluIHRoZSBzYW1lIGluc3RhbGwuIEFueSBnb29kIHN1Z2dlc3Rpb25zPyBJ
IGRvIGhhdmUgYWNjZXNzIHRvIGEgRmVkb3JhIGNvcmUgSVNPIGltYWdlIGJ1dCBJJ20ganVzdCB3
b25kZXJpbmcgaWYgdGhlcmUncyBzb21ldGhpbmcgYmV0dGVyIG9yIHdpbGwgdGhpcyBiZSBzdWZm
aWNpZW50PyBMb29raW5nIGZvcndhcmQgdG8gcmVhZGlnIHJlc3BvbnNlIHdha2UgdXAgdG8gbXkg
cXVlc3Rpb24uCj4+Pj4gCj4+Pj4gCj4+Pj4gUGxlYXNlIGJlIGF3YXJlIHRoYXQgSSBhbSBkaWN0
YXRpbmcgdGhpcyB0byB0aGUgY29tcHV0ZXIgYW5kIFdpbmRvd3MuIEkgYW0gdXNpbmcgZGljdGF0
aW9uIHNvZnR3YXJlIGJlY2F1c2Ugb2YgYW4gYWRkaXRpb25hbCBkaXNhYmlsaXR5LiBJZiB0aGVy
ZSdzIHNvbWV0aGluZyB0aGF0IEkndmUgd3JpdHRlbiBhYm91dCB0aGF0IHlvdSB0cnVseSBkbyBu
b3QgdW5kZXJzdGFuZCwgcGxlYXNlIHdyaXRlIG1lIGFuZCBhc2tlZCBtZSB3aGF0IEkgbWF5IGhh
dmUgbWVhbnQuIEkgdGhhbmsgeW91IGtpbmRseSBpbiBhZHZhbmNlIGZvciByZWFkaW5nIHRoaXMu
Cj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gT24gMTEvMTYvMjAyMSAzOjA2IFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBUaGFuayB5b3UgRGlkaWVyLWFu
ZC1LeWxlLiBJIHdpbGwgY2VydGFpbmx5IHJ1biB5b3VyIGNvbW1hbmQsIGJ1dCBkbyBJIG5lZWQg
dG8gdW4gbW91bnQgYW55dGhpbmc/IEkgd291bGQgYWxzbyBmaWd1cmUgSSB3b3VsZCBiZSBzaXR0
aW5nIG91dHNpZGUgb2YgdGhhdCBtZGVpYSBkaXJlY3Rvcnk/IE8tYW5kLXllcywgRGlkaWVyLCBp
dCBpcyB2ZmF0Lgo+Pj4+PiBDaGltZQo+Pj4+PiAKPj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiAKPj4+PiAKPj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4+
IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

