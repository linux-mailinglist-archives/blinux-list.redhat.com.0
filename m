Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA7F532785
	for <lists+blinux-list@lfdr.de>; Tue, 24 May 2022 12:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653387997;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7XNFrxxYFC7Lh5J+PM+dF4pK+NSGMEsy34PDJ0KyARM=;
	b=bW+USZ7MCwlW/xigvYe7bqmrtZtK43YcNLrD8jAhs8o6/oD+FHXmxdjFhR7rs1dwsL95cx
	S43mW5SxPgD04UaQhz5RGQLifAy/y60eN85HKG17MAl5J5goCAw0x3dpcoHS7jPWTS8w+v
	iFcbHWzGOJ5pN3sPHNK+29paI3nSwYQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-f9YgZTi8MheEDUWHjNYcLA-1; Tue, 24 May 2022 06:26:34 -0400
X-MC-Unique: f9YgZTi8MheEDUWHjNYcLA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8EB2185A79C;
	Tue, 24 May 2022 10:26:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 44165492C3B;
	Tue, 24 May 2022 10:26:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AA8D41947BAC;
	Tue, 24 May 2022 10:26:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 24 May 2022 12:26:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I'm in crisis, help!!!
To: blinux-list@redhat.com
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
 <mailman.17614.1653335316.111208.blinux-list@redhat.com>
 <mailman.17028.1653336203.111207.blinux-list@redhat.com>
 <mailman.17621.1653336356.111204.blinux-list@redhat.com>
 <mailman.17116.1653381990.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.17116.1653381990.111207.blinux-list@redhat.com>
Message-ID: <mailman.17554.1653387989.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhClRvIGtub3csIHdlIG5lZWQgdG8ga25vdyBtb3JlOiB0aGUgZXhhY3Qgc3RlcHMgeW91IGZv
bGxvdywgd2hlbiB0aGUgaXNzdWUgb2NjdXIsCmFuZCB3aGF0IGdvZXMgd3JvbmcgZXhhY3RseS4K
CkRpZCB5b3UgY2hlY2sgdGhlIGludGVncml0eSBvZiB0aGUgSVNPIHlvdSBkb3dubG9hZGVkPwoK
Q2hlZXJzLApEaWRpZXIKCkxlIDI0LzA1LzIwMjIgw6AgMTA6NDYsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSEKPiBDYW4gaXQgYmUgYSBoYXJkd2Fy
ZSBpc3N1ZSBtYXliZT8KPiBKdXN0IHRoaW5raW5nIGhlcmUuCj4gTm90IHN1cmUgdGhvdWdoIHdo
YXQgdGhhdCBoYXJkd2FyZSBpc3N1ZSBjb3VsZCBiZS4KPiBNYXliZSBhIG1lbW9yeSBvciBiaW9z
IGlzc3VlLgo+IC9BCj4gCj4+IDIzIG1haiAyMDIyIGtsLiAyMjowNSBza3JldiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4KPj4g
SGkgRGlkaWVyLAo+Pgo+Pgo+PiBJIGNlcnRhaW5seSB3aWxsLiBCdXN5IGZsYXNoaW5nIFNsaW50
IHRvIGEgZHJpdmUgbm93Lgo+Pgo+Pgo+PiBJJ20gZmVkIHVwIHdpdGggc3R1ZmYgbm90IGRvaW5n
IHdoYXQgaXQncyBzdXBwb3NlIHRvLCBzb21ldGhpbmcgSSd2ZSBuZXZlciBmb3VuZCB0cnVlIGZv
ciBTbGludC4KPj4KPj4KPj4gV2FybSByZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+
Cj4+IFNlbnQgdXNpbmcgVGh1bmRlcmJpcmQgb24gdGhlIExpbnV4IGJveC4KPj4KPj4gT24gMjAy
Mi8wNS8yMyAyMjowMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+IEhvIEJyYW5kdAo+Pj4KPj4+IExlIDIzLzA1LzIwMjIgw6AgMjE6NDgsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4+IE9rLCBJJ20gZ29pbmcgImhv
bWUiLCBkb3dubG9hZGluZyBTbGludCBhZ2FpbiwgbGV0cyBob3BlIGl0IGRvZXNuJ3QgYnJlYWsg
b24gbWUKPj4+PiB0aGlzIHRpbWUuCj4+PiBJZiBpdCBkb2VzLCBwaW5nIG1lLCBJJ2xsIHRyeSB0
byBoZWxwLiBZb3UgY2FuIHJlYWNoIG1lIHZpYSBlbWFpbCwgVGVsZWdyYW0gYW5kIElSQy4KPj4+
Cj4+PiBHb29kIGx1Y2suCj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4gLS0KPj4+IERpZGllcgo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

