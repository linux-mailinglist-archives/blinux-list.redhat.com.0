Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 901977BA82C
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 19:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696527447;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YUzkmYolwzftvFj7ZLLKihasvC0hDBa0A1OiOLUi6YE=;
	b=fJ1xnLyjnQKiv7bRMNMAAaRx89LEkhtm19SI8UgEAL7cgRq577RO0hgeyjs2R6o3XwkI34
	BpkqxZo3U0Nv4OfSiZviGO/591Yp6VAkCdInFGhJRNfS+1Z35hVpHlUnBgxmiepsCjT2+O
	t+wkm2LsgwcwnnI/sPBkuOlYritENyY=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-126-TIUyYhBcMAu0RkemgwPELA-1; Thu, 05 Oct 2023 13:37:23 -0400
X-MC-Unique: TIUyYhBcMAu0RkemgwPELA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C07953857B65;
	Thu,  5 Oct 2023 17:37:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4650C40C84A1;
	Thu,  5 Oct 2023 17:37:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BFD8B19465B1;
	Thu,  5 Oct 2023 17:37:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.100.2.1.4\))
Subject: Re: Intro.
Date: Thu, 5 Oct 2023 17:37:02 +0000
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
 <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
 <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.1572.1696525144.2981444.blinux-list@redhat.com>
X-Spam-Status: No, score=-4.60
Message-ID: <mailman.1524.1696527438.2981445.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgaXMgIHRoaXMgYSBiaXN0cm8sIG9yICBhIHBhY2thZ2UgdGhhdCBjYW4gYmUgZG93bmxvYWRl
ZD8gSWYgdGhpcyBpcyAgcGFja2FnZSBjYW4gIGl0LiBSdW4gdW5kZXIgVWJ1bnR1LCBvciBkaWZm
ZXJlbnQuIAoKCgo+IE9uIE9jdCA1LCAyMDIzLCBhdCAxNjo1OCwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSSdt
IGdvaW5nIHRvIHJlY29tbWVuZCBzbGludCBhbmQgSSByZWNvbW1lbmQgd2hlbiB5b3UgaW5zdGFs
bCBzbGludCB0bwo+IHN0YXJ0IGluIGNvbnNvbGUuICBUaGUgcmVhc29uIHRvIHN0YXJ0IGluIGNv
bnNvbGUgaXMgeW91IGxvZyBpbiBpbgo+IGNvbnNvbGUuICBUaGUgc3RhcnR4IHNjcmlwdCB5b3Ug
cnVuIGFmdGVyIGxvZ2luLiAgSWYgZm9yIHdoYXRldmVyIHJlYXNvbgo+IHlvdXIgZ3JhcGhpY2Fs
IGVudmlyb25tZW50IGZhaWxzIHRvIHdvcmssIHlvdSBhdCBsZWFzdCBoYXZlIGEgY2hhbmNlIHRv
IGRvCj4gc29tZXRoaW5nIGFib3V0IGl0IHNpbmNlIHlvdSdyZSBhbHJlYWR5IGxvZ2dlZCBpbi4g
IFRoZSBuaWdodG1hcmUKPiBzaXR1YXRpb24gZm9yIGdyYXBoaWNhbCB1c2VycyB3aG8gc3RhcnQg
aW4gZ3JhcGhpY3MgbW9kZSBpcyB0aGVpciBsb2dpbgo+IGRvZXNuJ3Qgd29yayBhbmQgdGhlbiB0
aGV5IGhhdmUgYSBwYXBlcndlaWdodCB1bnRpbCB0aGV5IHJlaW5zdGFsbCB0aGUKPiBzeXN0ZW0u
Cj4gCj4gCj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBm
b3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJhbGxv
dCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+IG9yZGVyLiIgRWQgSG93ZGVy
c2hlbHQgMTk0MC4KPiAKPiBPbiBUaHUsIDUgT2N0IDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IEhlbGxvLCBJIGNhbiB0ZWxsIHRoZSBkaWZmZXJl
bmNlIGJldHdlZW4gbGlnaHQgYW5kIGRhcmsuIEkgaGF2ZSB1c2VkIGFsbCB3aW5kb3dzIE9TIHN5
c3RlbXMgZnJvbSB3YXkgYmFjayB3aW5kb3dzNywgQmlsbHkKPj4gCj4+IFNlbnQgZnJvbSBNYWls
IGZvciBXaW5kb3dzCj4+IAo+PiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uCj4+IFNlbnQ6IDA0IE9jdG9iZXIgMjAyMyAxMjo1Mwo+PiBUbzogTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbgo+PiBTdWJqZWN0OiBSZTogSW50cm8uCj4+IAo+PiBBIGNvdXBs
ZSBxdWVzdGlvbnMuCj4+IEluIHlvdXIgY2FzZSBpcyBibGluZCBkZWZpbmVkIGFzIG5vIHVzZWFi
bGUgdmlzaW9uIGluY2x1ZGluZyBubyBhYmlsaXR5IHRvCj4+IHNlZSBsaWdodD8KPj4gV2hhdCBv
cGVyYXRpbmcgc3lzdGVtIG9yIG9wZXJhdGluZyBzeXN0ZW1zIGRpZCB5b3UgdXNlIGJlZm9yZSBM
aW51eD8KPj4gQW5zd2VycyB0byB0aGVzZSB0d28gcXVlc3Rpb25zIG91Z2h0IHRvIGhlbHAgdGhl
IGxpc3QgZ2V0IHlvdSBiZXR0ZXIKPj4gZ3VpZGVhbmNlLgo+PiAKPj4gCj4+IC0tIEp1ZGUgPGpk
YXNoaWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2Vk
IGluCj4+IGRlZmVuc2Ugb2YgbGliZXJ0eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4g
UGxlYXNlIHVzZSBpbiB0aGF0Cj4+IG9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPj4gCj4+
IE9uIFdlZCwgNCBPY3QgMjAyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4gCj4+PiBIaSBndXlzLCBzbyBnbGFkIHRvIGJlIGpvaW5pbmcgdGhpcyBncm91cC4g
SSBrbm93IG5vdGhpbmcgYWJvdXQgTGludXggcGxhdGZvcm0gYnV0IHdvdWxkIGxpa2UgdG8gdHJ5
IExpbnV4IGZvciBteXNlbGYuIFRoZSBwcm9ibGVtIGlzIEkgd291bGRu4oCZdCBrbm93IHdoaWNo
IHZlcnNpb24gdG8gdHJ5IG91dCBmaXJzdCBhbmQgdGhhdCBpcyBvbmUgcmVhc29uIGZvciBqb2lu
aW5nIHRoaXMgZ3JvdXAuIEkgYW0gYSBibGluZCBwZW5zaW9uZXIgbGl2aW5nIGluIFNjb3RsYW5k
IFVLLiBJRiB5b3UgY291bGQgcHJvdmlkZSBtZSB3aXRoIGhlbHAvYWR2aWNlIG9uIHdoaWNoIHZl
cnNpb24gb2YgTGludXggd291bGQgYmUgYmVzdCBmb3IgbWUgSSB3b3VsZCBhcHByZWNpYXRlIGl0
IGluZGVlZCwgQmlsbHkKPj4+IAo+Pj4gU2VudCBmcm9tIE1haWwgZm9yIFdpbmRvd3MKPj4+IAo+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4g
Cj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

