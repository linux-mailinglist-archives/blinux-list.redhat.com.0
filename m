Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E9F5329EE
	for <lists+blinux-list@lfdr.de>; Tue, 24 May 2022 14:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653393933;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8HCWnar4iU3uoRqQQL+k/kA9ldlY6HyCsnqi0khDw68=;
	b=KXnVh3HhtwhAoH7jZuoKv1wgHoys3Q+R0Sdl2JBznfJuVx8phc3A5YjP4rZi0N05QUMJ59
	JbgCx0j62bed15iFKyyvm9lSpgSWxebuGDEZ8ngjIqJTfBpsPl+6NzQo1bU1+zdBFeqFqE
	HWo8rQj/GAoihL6qLJYrrnk9foQWDP4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-2slltkByMO62U-E80xbcHQ-1; Tue, 24 May 2022 08:05:29 -0400
X-MC-Unique: 2slltkByMO62U-E80xbcHQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C68D43C62B6C;
	Tue, 24 May 2022 12:05:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 05327401E3B;
	Tue, 24 May 2022 12:05:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3E636193F6F7;
	Tue, 24 May 2022 12:05:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 24 May 2022 14:04:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: I'm in crisis, help!!!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.17336.1653299859.111203.blinux-list@redhat.com>
 <mailman.17518.1653310063.111208.blinux-list@redhat.com>
 <mailman.17273.1653321119.111205.blinux-list@redhat.com>
 <mailman.17397.1653321680.111210.blinux-list@redhat.com>
 <mailman.17614.1653335316.111208.blinux-list@redhat.com>
 <mailman.17028.1653336203.111207.blinux-list@redhat.com>
 <mailman.17621.1653336356.111204.blinux-list@redhat.com>
 <mailman.17116.1653381990.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.17116.1653381990.111207.blinux-list@redhat.com>
Message-ID: <mailman.17457.1653393923.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBkb24ndCB0aGluayBzbywgYWxtb3N0IGV2ZXJ5IG90aGVyIGRpc3RybyB3aXRoIGEgdGFsa2lu
ZyBpbnN0YWxsZXIgCndvcmtzIGp1c3QgZmluZS4KCgpJIGhhdmUganVzdCBzdWNjZXNzZnVsbHkg
cmUtaW5zdGFsbGVkIFNsaW50IHdpdGhvdXQgYW55IGlzc3VlcyB3aGF0IHNvIGV2ZXIuCgoKSSBk
b24ndCBrbm93IHdoeSBteSBwcmV2aW91cyBTbGludCBpbnN0YWxsIGJyb2tlLCBidXQgdGhpcyBv
bmUgc2VlbXMgdG8gCmJlIGZpbmUsIGZvciBub3cuIFdlJ2xsIHNlZS4KCgpXYXJtIHJlZ2FyZHMs
CgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IHVzaW5nIFRodW5kZXJiaXJkIGZyb20gdGhlIFNsaW50
IGxhcHRvcAoKT24gMjAyMi8wNS8yNCAxMDo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBIaSEKPiBDYW4gaXQgYmUgYSBoYXJkd2FyZSBpc3N1ZSBtYXliZT8K
PiBKdXN0IHRoaW5raW5nIGhlcmUuCj4gTm90IHN1cmUgdGhvdWdoIHdoYXQgdGhhdCBoYXJkd2Fy
ZSBpc3N1ZSBjb3VsZCBiZS4KPiBNYXliZSBhIG1lbW9yeSBvciBiaW9zIGlzc3VlLgo+IC9BCj4K
Pj4gMjMgbWFqIDIwMjIga2wuIDIyOjA1IHNrcmV2IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+Pgo+PiBIaSBEaWRpZXIsCj4+Cj4+
Cj4+IEkgY2VydGFpbmx5IHdpbGwuIEJ1c3kgZmxhc2hpbmcgU2xpbnQgdG8gYSBkcml2ZSBub3cu
Cj4+Cj4+Cj4+IEknbSBmZWQgdXAgd2l0aCBzdHVmZiBub3QgZG9pbmcgd2hhdCBpdCdzIHN1cHBv
c2UgdG8sIHNvbWV0aGluZyBJJ3ZlIG5ldmVyIGZvdW5kIHRydWUgZm9yIFNsaW50Lgo+Pgo+Pgo+
PiBXYXJtIHJlZ2FyZHMsCj4+Cj4+IEJyYW5kdCBTdGVlbmthbXAKPj4KPj4gU2VudCB1c2luZyBU
aHVuZGVyYmlyZCBvbiB0aGUgTGludXggYm94Lgo+Pgo+PiBPbiAyMDIyLzA1LzIzIDIyOjAyLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSG8gQnJhbmR0Cj4+
Pgo+Pj4gTGUgMjMvMDUvMjAyMiDDoCAyMTo0OCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4gT2ssIEknbSBnb2luZyAiaG9tZSIsIGRvd25sb2FkaW5n
IFNsaW50IGFnYWluLCBsZXRzIGhvcGUgaXQgZG9lc24ndCBicmVhayBvbiBtZQo+Pj4+IHRoaXMg
dGltZS4KPj4+IElmIGl0IGRvZXMsIHBpbmcgbWUsIEknbGwgdHJ5IHRvIGhlbHAuIFlvdSBjYW4g
cmVhY2ggbWUgdmlhIGVtYWlsLCBUZWxlZ3JhbSBhbmQgSVJDLgo+Pj4KPj4+IEdvb2QgbHVjay4K
Pj4+Cj4+PiBDaGVlcnMsCj4+PiAtLQo+Pj4gRGlkaWVyCj4+Pgo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

