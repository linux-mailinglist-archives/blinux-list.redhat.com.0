Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A17D44FC76D
	for <lists+blinux-list@lfdr.de>; Tue, 12 Apr 2022 00:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649715336;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9lAXmvkPb/0o7tUoXIVXyKGhdkhmKBXvpt+Yizk6F5o=;
	b=VOBm5J9ehtFXGQd5LXzC89cjfLbQdWyyVHA32MhYk9KYS985Zyfi1qikzi/+p7tkzGml+F
	w4ifhJjk6rGdiXLlnz80IQ5XRMydhXSoikpsW7e1ss5x4Qx2vHYdBraEiGLrcdvxr2L4jd
	2aqc+YcSOnARH99wQ/26aq7JZXJ2dUA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-173-axd82DabOEm074LVVovNwQ-1; Mon, 11 Apr 2022 18:15:33 -0400
X-MC-Unique: axd82DabOEm074LVVovNwQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1187486B8A1;
	Mon, 11 Apr 2022 22:15:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D3ACA145B99C;
	Mon, 11 Apr 2022 22:15:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4DC101940370;
	Mon, 11 Apr 2022 22:15:31 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 12 Apr 2022 00:15:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Dragonfm history vs show hidden
To: blinux-list@redhat.com
References: <mailman.7960.1649702888.111201.blinux-list@redhat.com>
 <mailman.7756.1649704345.111203.blinux-list@redhat.com>
 <mailman.7889.1649704507.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.7889.1649704507.111206.blinux-list@redhat.com>
Message-ID: <mailman.7805.1649715330.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpIYWhhLCBJJ20gbGl0ZXJhbHkgYSBiZWVyIHRvIGNvZGUgY29udmVydGVyIFhELgoK
MS4gaSB3cm90ZSB0aGUgcGFja2FnZSBtYWludGFpbmVyIG9mIHB5dGhvbi1pbm90aWZ5LiBsZXRz
IHNlZSB3aGF0IApoYXBwZW5zIGhlcmUuCmh0dHBzOi8vYXVyLmFyY2hsaW51eC5vcmcvcGFja2Fn
ZXMvcHl0aG9uLWlub3RpZnkjY29tbWVudC04NjA3OTMKMi4gaSBjb252ZXJ0ZWQgdGhlIGNvZGUg
dG8gcHl0aG9uLWlub3RpZnktc2ltcGxlLiBUaGlzIGNhbiBkbyBhbG1vc3QgdGhlIApzYW1lLiBC
dXQgaXMgYSBsaXR0bGUgc2xvdyB3aGlsZSB1bnJlZ2lzdGVyIHdhdGNoZXMuIHNvIGNsb3Npbmcg
dGFicyBjYW4gCmhhdmUgc29tZXRpbWVzIGEgc21hbGwgZGVsYXkuIHB5dGhvbi1pbm90aWZ5IGlz
IGEgbG90IGZhc3Rlci4gSSBjaG9vc2UgCnB5dGhvbi1pbm90aWZ5LXNpbXBsZSBpbnN0ZWFkIG9m
IHRoZSBhbHRlcm5hdGl2ZSBweXRob24tcHlpbm90aWZ5IApiZWNhdXNlIGxhc3Qgb25lIGxvb2tz
IGxpa2UgY3JhcCB0byBtZS7CoCBhbHNvIGxhc3QgdXBkYXRlIHdhcyBhYm91dCAxMCAKeWVhcnMg
YWdvLgpodHRwczovL2F1ci5hcmNobGludXgub3JnL3BhY2thZ2VzL3B5dGhvbi1pbm90aWZ5LXNp
bXBsZQozLiBpIHVwZGF0ZWQgdGhlIEFVUiBQS0dCVUlMRCB0byBtYXRjaCB0aGUgbmV3IGRlcGVu
ZGVuY3kuIHdlIHdpbGwgCnJldmVydCB0aGlzIGFzIHNvb24gYXMgdGhlIG1haW50YWluZXIgb2Yg
cHl0aG9uLWlub3RpZnkgcmVhY3RlZCwgYmVjYXVzZSAKdGhlIHBlcmZvcm1hbmNlIGhlcmUgaXMg
YmV0dGVyLgoKbG9uZyBzdG9yeSBzaG9ydDogZm9yIG5vdywgeW91IHNob3VsZCBiZSBhYmxlIHRv
IGluc3RhbGwgaXQgZnJvbSBBVVIgYW5kIAphbGwgc2hvdWxkIHdvcmsgYXMgYmVmb3JlIChidXQg
YSBsaXR0bGUgbW9yZSBiYWQgcGVyZm9ybWFuY2Ugd2hpbGUgY2xvc2UgCnRhYnMpCgpjaGVlcnMg
Y2hyeXMKCkFtIDExLjA0LjIyIHVtIDIxOjE1IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbjoKPiBEcnVuayBjb2RpbmcgaXMgbm90IHJlYWxseSBhZHZpc2VhYmxlLCBs
b2wuCj4KPiBJJ20gbm90IHN1cmUgd2hpY2ggd291bGQgd29yayBiZXN0IGFjdHVhbGx5LCByZXZl
cnQgYW5kIGhhdmUgZm9sa3MgbWFudWFsbHkgaW5zdGFsbCBpbm90aWZ5IG9yIHRyeSBjb252ZXJ0
aW5nIHRvIHB5dGhvbi1weWlub3RpZnkgdGhvdWdoCj4KPiBPbiBNb24sIEFwciAxMSwgMjAyMiBh
dCAwOToxMjoxN1BNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+PiBIb3dkeSwKPj4KPj4gU3VyZSBjYW4gcmV2ZXJ0IGl0IHRpbCB0aGUgZGVwZW5kZW5j
eSBpc3N1ZSBpcyBmaXhlZC4gQnV0IGl0IG1pZ2h0IHRha2UgYSB3aGlsZSwgaeKAmG0gY3VycmVu
dGx5IGF0IGFuIGJhciBkcmluayBzb21lIGNvbGQgYmVlci4KPj4KPj4gTWF5YmUgaSBjYW4gcmV3
b3JrIGl0IHRvIHVzZSBweXRob24tcHlpbm90aWZ5IGluc3RlYWQgb2YgcHl0aG9uLWlub3RpZnku
IFRoaXMgaXMgaW4gb2ZmaWNpYWwgQXJjaCBSZXBvc2l0b3J5Lgo+Pgo+Pgo+PiBDaGVlcnMgY2hy
eXMKPj4KPj4+IEFtIDExLjA0LjIwMjIgdW0gMjA6NDggc2NocmllYiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Cj4+PiDvu79G
b3Igbm93IGNhbiB5b3UgcmV2ZXJ0IHRoYXQgY2hhbmdlIHRvIHRoZSBzY3JpcHQ/IEl0IGJ1aWx0
IGZpbmUgYmVmb3JlIGFuZCBqdXN0IG5lZWRlZCB0aGUgbm90aWZ5IGluc3RhbGxlZCB2aWEgcGlw
IHRvIG1ha2UgaXQgd29yaywgaG93ZXZlciBJIGR1bm5vIGVub3VnaCBhYm91dCB0aGUgb3RoZXIg
cHl0aG9uLXB5bm90aWZ5IHBhY2thZ2UgYXQgYWxsIHRob3VnaAo+Pj4KPj4+PiBPbiBNb24sIEFw
ciAxMSwgMjAyMiBhdCAwODo0MzowNFBNICswMjAwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4+IEhvd2R5LAo+Pj4+Cj4+Pj4gV2VsbCBJIG0gbm90IHRoZSBt
YWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJZiBpdCBkb2VzIG5vdCBi
dWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4+Pgo+Pj4+IGh0dHBzOi8vYXVy
LmFyY2hsaW51eC5vcmcvcGFja2FnZXMvcHl0aG9uLWlub3RpZnkKPj4+Pgo+Pj4+IE1heWJlIGkg
d2lsbCByZXBsYWNlIHRoaXMgd2l0aCBweXRob24tcHlpbm90aWZ5IGFueXRpbWUuIFRoaXMgaXMg
aW4gb2ZmaWNpYWwgYXJjaCBsaW51eCByZXBvcy4KPj4+Pgo+Pj4+IENoZWVycyBjaHJ5cwo+Pj4+
Cj4+Pj4+PiBBbSAxMS4wNC4yMDIyIHVtIDIwOjI4IHNjaHJpZWIgTGludXggQTExeSA8Y2hyeXNA
bGludXgtYTExeS5vcmc+Ogo+Pj4+PiDvu79Ib3dkeSwKPj4+Pj4KPj4+Pj4gV2VsbCBJIG0gbm90
IHRoZSBtYWludGFpbmVyIG9mIHRoZSBweXRob24taW5vdGlmeSBwYWNrYWdlLiBJZiBpdCBkb2Vz
IG5vdCBidWlsZCBwbGVhc2UgY29udGFjdCB0aGUgbWFpbnRhaW5lci4KPj4+Pj4KPj4+Pj4gaHR0
cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9weXRob24taW5vdGlmeQo+Pj4+Pgo+Pj4+
PiBNYXliZSBpIHdpbGwgcmVwbGFjZSB0aGlzIHdpdGggcHl0aG9uLXB5aW5vdGlmeSBhbnl0aW1l
LiBUaGlzIGlzIGluIG9mZmljaWFsIGFyY2ggbGludXggcmVwb3MuCj4+Pj4+Cj4+Pj4+IENoZWVy
cyBjaHJ5cwo+Pj4+Pgo+Pj4+PiBWb24gbWVpbmVtIGlQaG9uZSBnZXNlbmRldAo+Pj4+Pgo+Pj4+
Pj4+IEFtIDExLjA0LjIwMjIgdW0gMjA6MTEgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4+Pj4+Pgo+Pj4+Pj4g77u/
RmFpbGVkIHRvIGJ1aWxkIGFuZCBtYWtlIHRoZSBweXRob24gaW5vdGlmeSBkdWUgdG8gcHl0aG9u
Mi1ub3NlIGlzIHdoYXQgSSdtIGdldHRpbmcuIEFkZGl0aW9uYWxseSB0aGUgcHl0aG9uLWlub3Rp
ZnkgeW91J3JlIHVzaW5nIGZvciB0aGUgc2NyaXB0IGlzIG1hcmtlZCBvdXQgb2YgZGF0ZS4gSSds
bCB0cnkgcHV0dGluZyBpbm90aWZ5IGJhY2sgd2l0aCBwaXAgYW5kIHNlZSBpZiB0aGF0IGdldHMg
YXJvdW5kIGl0IGFnYWluLCB0aG91Z2ggSSdtIG5vdCBzdXJlIHdoeSBpdCdzIGZhaWxpbmcgdG8g
YnVpbGQuCj4+Pj4+Pgo+Pj4+Pj4gQW55IG90aGVyIEFyY2ggdXNlcnMgcnVubmluZyBpbnRvIHRo
aXMgb3IgaXMgaXQganVzdCBtZT8KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

