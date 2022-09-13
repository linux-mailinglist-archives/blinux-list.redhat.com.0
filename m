Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8C55B7AA7
	for <lists+blinux-list@lfdr.de>; Tue, 13 Sep 2022 21:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663096746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z9tLCtib8efmG73DfLutYk85LDWRnRblOvji4Ne1ju0=;
	b=ahj9um+ygdjA8rpwZ3zixNUei1DPbzIM8nlW0HV2hLd4XxKh2YjUxl1ac2e2sV4aTrPRJW
	d2aN3UcqxAUFy12J1cIYGm5h0KzUZoURP/7lnuLRStLmorZr6XKhxV44U66TnlyfZ0Eerb
	cbcdZlYTKsMuJhrZHLBlXwOnGPPggj4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-665-6bw_4t1ENgO_4PDbpcuLEQ-1; Tue, 13 Sep 2022 15:19:02 -0400
X-MC-Unique: 6bw_4t1ENgO_4PDbpcuLEQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4108E1818815;
	Tue, 13 Sep 2022 19:19:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D7CEF200BA64;
	Tue, 13 Sep 2022 19:18:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3803F1946A51;
	Tue, 13 Sep 2022 19:18:54 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net CA2AB14C1208
Date: Tue, 13 Sep 2022 21:08:46 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Daisy-player
References: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
 <mailman.7882.1662933308.10505.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.7882.1662933308.10505.blinux-list@redhat.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
 T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.8693.1663096733.10503.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU3VuLCBTZXAgMTEsIDIwMjIgYXQgMTE6NTQ6MjlQTSArMDAwMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIaSwKPiAKPiBObyBjbHVlLCBzb3JyeSwgYnV0
IGZvciB5b3VyIGluZm9ybWF0aW9uIHRoZSBuZXcgcmVwb3NpdG9yeSBpczoKPiBodHRwczovL2dp
dGh1Yi5jb20vYm9vay1yZWFkZXJzL2RhaXN5LXBsYXllcgo+IAo+IERpZGllciBTcGFpZXIKClRo
YW5rIHlvdS4KCkFmdGVyIGRvaW5nIC4vY29uZmlndXJlOyBtYWtlLCBJIGdldCBhbm90aGVyIHBy
b2JsZW06CgptYWtlWzJdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2xycy90bXAvZGFpc3kt
cGxheWVyL21hbicKLi9kYWlzeS1wbGF5ZXIuMTogdHJvZmYgb3IgcHJlcHJvY2Vzc29yIGlucHV0
LCBBU0NJSSB0ZXh0LCB3aXRoIHZlcnkgbG9uZyBsaW5lcwooNjgwKQptYWtlWzJdOiBMZWF2aW5n
IGRpcmVjdG9yeSAnL2hvbWUvbHJzL3RtcC9kYWlzeS1wbGF5ZXIvbWFuJwpNYWtpbmcgYWxsIGlu
IGRvYwptYWtlWzJdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2xycy90bXAvZGFpc3ktcGxh
eWVyL2RvYycKbWFrZVsyXTogKioqIE5vIHJ1bGUgdG8gbWFrZSB0YXJnZXQgJ1JlYWRtZScsIG5l
ZWRlZCBieSAnYWxsLWFtJy4gIFN0b3AuCm1ha2VbMl06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9t
ZS9scnMvdG1wL2RhaXN5LXBsYXllci9kb2MnCm1ha2VbMV06ICoqKiBbTWFrZWZpbGU6NTg3OiBh
bGwtcmVjdXJzaXZlXSBFcnJvciAxCm1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS9s
cnMvdG1wL2RhaXN5LXBsYXllcicKbWFrZTogKioqIFtNYWtlZmlsZTo1MjY6IGFsbF0gRXJyb3Ig
MgoKSWYgZG9pbmcgbWFrZSBpbiB0aGUgc3JjIGRpciwgSSBzdGlsbCBnZXQgdGhlIHNveC5oIG5v
dCBmb3VuZCwgZXZlbiB0aG91Z2ggdGhlIHNveC5oIGZpbGUgaXMgaW4gL3Vzci9pbmNsdWRlL3Nv
eC9zb3guaC4KCkxhcnMKCj4gTGUgMTEvMDkvMjAyMiDDoCAxOTo1NCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+ID4gSGksIGFsbCEKPiA+IAo+ID4gSSBk
b3dubG9hZGVkIGRhaXN5LXBsYXllciB2LjEzLjAgZnJvbSBodHRwOi8vamxlbW1lbnMubmwvLCBk
aXJlY3QgbGluazoKPiA+IDxodHRwOi8vdGEudHdpLnR1ZGVsZnQubmwvZHYvc3RhZmYvbGVtbWVu
cy9qbGVtbWVucy5ubC9kYWlzeS1wbGF5ZXItMTMuMC50YXIuZ3o+Cj4gPiAKPiA+IFdoZW4gdHJ5
aW5nIHRvIGNvbXBpbGUgZnJvbSBhIEZlZG9yYSAzNSBzeXN0ZW0sIEkgZ2V0IGEgZmF0YWwgZXJy
b3I6Cj4gPiAKPiA+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSBhbHNhX2N0bC5jOjIxOgo+ID4gZGFp
c3kuaDozODoxMDogZmF0YWwgZXJyb3I6IHNveC5oOiBubyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
Cj4gPiAgICAzOCB8ICNpbmNsdWRlIDxzb3guaD4KPiA+ICAgICAgICAgIHwgICAgICAgICAgXn5+
fn5+fgo+ID4gCj4gPiBJJ3ZlIGluc3RhbGxlZCB0aGUgc294LWRldmVsIHBhY2thZ2UuIEFueSBp
ZGVhIG9uIGhvdyBJIGNhbiBmaXggdGhpcz8KPiA+IAo+ID4gVGhhbmtzIGluIGFkdmFuY2UsIExh
cnMgQmrDuHJuZGFsCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

