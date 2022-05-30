Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 113B55386BB
	for <lists+blinux-list@lfdr.de>; Mon, 30 May 2022 19:24:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653931479;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ItTAvBFDSUMa05BGFR0A0FgFy3I4ay59UwmJvjcAhRs=;
	b=bV8nIB0cwaoh+D0A/hgo1NiSZaGreL5hKBdsxq5jUlKxpHBmD8INqNKNc1MKLNAoFeTL+n
	sE5jscpgmBmT8uk4yrbzw17b3Xs3mwLT2Kc851DotbjaP2dWQU7TGN7AdzAvWCarHa3sdD
	/dG2jNOhXEkmF2jJ0f+IzvsdPmPYLvE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-zfQAAs8rNo-Si6jWYi0xXA-1; Mon, 30 May 2022 13:24:36 -0400
X-MC-Unique: zfQAAs8rNo-Si6jWYi0xXA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C2DD3802803;
	Mon, 30 May 2022 17:24:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3EE2A2026D64;
	Mon, 30 May 2022 17:24:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D998B194705E;
	Mon, 30 May 2022 17:24:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 May 2022 19:24:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Accessible ftp
To: blinux-list@redhat.com
References: <mailman.19063.1653928602.111210.blinux-list@redhat.com>
 <mailman.19544.1653929382.111206.blinux-list@redhat.com>
 <mailman.19314.1653930655.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.19314.1653930655.111203.blinux-list@redhat.com>
Message-ID: <mailman.19553.1653931473.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJhbmR0LAoKbGZ0cCwgc2Z0cCAoQ0xJKSBnZnRwIChHVUkgYnkgZGVmYXVsdCBidXQgdGhl
IGlzIGFsc28gZ2Z0cC10eHQgdGhhdCBJIG5ldmVyCnVzZWQpIGNhbiBkbyBmdHAgb3ZlciBzc2gg
YW5kIGFyZSBpbnN0YWtsbGVkIGJ1IGRlZmF1bHQgaW4gU2xpbnQuCgpsZnRwIGFuZCBzZnRwIGhh
dmUgZ29vZCBtYW4gcGFnZXMKCmxmdHAgaXMgYW1hemluZzogdG8gbWlycm9yIGEgd2Vic2l0ZSBq
dXN0IHR5cGU6CmxmdHAgLWMgIm1pcnJvciA8dXJsPiIKCkNoZWVycywKCkRpZGllcgoKCkxlIDMw
LzA1LzIwMjIgw6AgMTk6MTAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPiBPaywgc29ycnksIEkgd2FzIHByb2JhYmx5IG5vdCBhcyBjbGVhciBhcyBJIHNo
b3VsZCBoYXZlIGJlZW4uIE9uZSBvZiB0aGUgc2l0ZXMgSQo+IGhhdmUgdG8gY29ubmVjdCB0byBh
c2tzIGZvciBmdHAgb3ZlciB0bHMsIGFuZCBub25lIG9mIHRoZSA0IHNpdGVzIGhhcyBzdGFuZGFy
ZAo+IHBvcnQgMjEgYXMgdGhlIGNvbm5lY3Rpb24gZGVmYXVsdC4KPiAKPiBJIGtub3cgSSBjb3Vs
ZCBwcm9iYWJseSB1c2UgZmlsZXppbGxhIG9uIHRoZSBHVUksIGJ1dCBJJ2QgcHJlZmVyIHRoZSBD
TEkuCj4gCj4gV2FybSByZWdhcmRzLAo+IAo+IEJyYW5kdCBTdGVlbmthbXAKPiAKPiBTZW50IHVz
aW5nIFRodW5kZXJiaXJkIGZyb20gdGhlIFNsaW50IGxhcHRvcAo+IAo+IE9uIDIwMjIvMDUvMzAg
MTg6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFRpbSBo
ZXJlLsKgIEkndmUgYWx3YXlzIGp1c3QgdXNlZCB0aGUgY29tbWFuZC1saW5lIGNsaWVudCAoc2lu
Y2UgdGhlCj4+IGxhdGUgODBzIG9yIGVhcmx5IDkwcyBvdmVyIGRpYWwtdXA/KSB3aGljaCBpcyBh
Y2Nlc3NpYmxlIGFzIGFueSBvdGhlcgo+PiBDTEkgYXBwbGljYXRpb246Cj4+Cj4+IMKgwqAgJCBm
dHAgZnRwLmV4YW1wbGUuY29tCj4+IMKgwqAgZnRwPiBscwo+PiDCoMKgIFtmaWxlcyAmIGRpcmVj
dG9yaWVzXQo+PiDCoMKgIGZ0cD4gY2QgL3B1Ygo+PiDCoMKgIGZ0cD4gbHMKPj4gwqDCoCBbZmls
ZXMgJiBkaXJlY3RvcmllcyBpbiAvcHViXQo+PiDCoMKgIGZ0cD4gYmluCj4+IMKgwqAgMjAwIFR5
cGUgc2V0IHRvIEkuCj4+IMKgwqAgZnRwPiBnZXQgc29tZV9maWxlLnppcAo+PiDCoMKgIFtmaWxl
IGRvd25sb2Fkc10KPj4gwqDCoCBmdHA+IHB1dCBsb2NhbF9maWxlLm1wMwo+PiDCoMKgIFt1cGxv
YWRzICJsb2NhbF9maWxlLm1wMyIgdG8gdGhlIHNlcnZlcl0KPj4KPj4gSWYgeW91J3JlIG9ubHkg
dHJhbnNmZXJyaW5nIHRleHQgZG9jdW1lbnRzLCB5b3UgY2FuIHNraXAgdGhlICJiaW4iYXJ5Cj4+
IGNvbW1hbmQsIGxldHRpbmcgaXQgam9ja2V5IGxpbmUtZW5kaW5ncyBmb3IgeW91LsKgIEJ1dCBt
b3N0IG9mIHRoZQo+PiB0aW1lIHlvdSB3YW50IHRvIHVzZSAiYmluImFyeSBtb2RlIHRvIGVuc3Vy
ZSB0aGUgZmlsZSBkb2Vzbid0IGhhdmUKPj4gbmV3bGluZS10cmFuc2xhdGlvbiBkdXJpbmcgdHJh
bnNmZXIuCj4+Cj4+IC1UaW0KPj4KPj4KPj4gT24gTWF5IDMwLCAyMDIyLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSSBuZWVkIGEgd2F5IHRvIGNvbm5lY3Qg
dG8gc29tZSBmdHAgc2lydmVycywgd2hhdCB3b3VsZCB5b3UKPj4+IHJlY29tbWVuZCwgd2VhdGhl
ciBpdCBiZSBDTEkgb3IgR1VJIHJlYWxseSBkb2Vzbid0IG1hdHRlciB0byBtZS4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

