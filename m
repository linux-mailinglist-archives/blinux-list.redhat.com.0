Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E252B4AF0FB
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 13:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644408542;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4HO1un1GB735RTvkBxFJfF6kHSuZx2mfYwwZaBKfNQg=;
	b=MOh98sF4Mf2Btb40U73a3/iB6lH6SGzBfVhQhLIsIZfHZIDp03iDbiP9+G68n2ViHlMYTt
	Uxyel25/v+tnoZrzAflvU9JgTc6PxZF6AoKcC4aQqZNncSXP1s+FH5iHoyDphNP4OKapSo
	ZKMONZPgCej8E/K78XW0Tl66ZnssxOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-4tzWD-mVP_Kz9D2FiX0y4A-1; Wed, 09 Feb 2022 07:08:58 -0500
X-MC-Unique: 4tzWD-mVP_Kz9D2FiX0y4A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 236CA64159;
	Wed,  9 Feb 2022 12:08:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69325752B0;
	Wed,  9 Feb 2022 12:08:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D09891806D2B;
	Wed,  9 Feb 2022 12:08:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219C4piq006759 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 07:04:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EC9C7492D1C; Wed,  9 Feb 2022 12:04:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8512492D18
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:04:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD1F9801E8D
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 12:04:50 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
	[185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-671--0--JwTcPSChmpdMhnxuQg-1; Wed, 09 Feb 2022 07:04:49 -0500
X-MC-Unique: -0--JwTcPSChmpdMhnxuQg-1
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com
	[188.165.51.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by mail-41103.protonmail.ch (Postfix) with ESMTPS id 4Jtz2K0C8yz4xGGT
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 11:59:37 +0000 (UTC)
Date: Wed, 09 Feb 2022 11:59:26 +0000
To: blinux-list@redhat.com
Subject: Re: Coqui TTS has blew my mind!
Message-ID: <65db3283-530f-6961-d077-b43077f69b65@protonmail.com>
In-Reply-To: <ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
	<ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219C4piq006759
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQ2hyeXMsCgpJIHRoaW5rIHRoZSBwcm9ibGVtIGlzIHRoYXQgUHl0aG9uIDMuMTAgaXMg
bm90IHN1cHBvcnRlZCBhcyBvZiBub3cuCgpodHRwczovL3B5cGkub3JnL3Byb2plY3QvVFRTLwoK
ClRob3VnaCBJJ20gbm90IHN1cmUgd2h5LiBNYXkgYmUgc29tZSBvZiB0aGUgYmFja2luZyBsaWJy
YXJpZXMgYXJlIG5vdAp5ZXQgY29tcGF0aWJsZSwgSSByZW1lbWJlciB0aGlzIGJlaW5nIGEgcHJv
YmxlbSBpbiB0aGUgcGFzdCB3aXRoIG5ldwpyZWxlYXNlcyBvZiBUZW5zb3JGbG93LgoKClBlcmhh
cHMgYSB2aXJ0dWFsIGVudmlyb25tZW50IHdpdGggbG93ZXIgUHl0aG9uIHZlcnNpb24gY291bGQg
ZG8gdGhlIHRyaWNrPwoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgOS4gMi4gMjAy
MiBvIDExOjQ4IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6
Cj4gSG93ZHksCj4KPiBqdXN0IHdhbnQgdG8gdHJ5IGNvcXVpIGFnYWluIChhZnRlciBhIHdoaWxl
KSBhbmQganVzdCBnb3QgdGhpczoKPiAkIHBpcDMgaW5zdGFsbCBUVFMKPiBEZWZhdWx0aW5nIHRv
IHVzZXIgaW5zdGFsbGF0aW9uIGJlY2F1c2Ugbm9ybWFsIHNpdGUtcGFja2FnZXMgaXMgbm90Cj4g
d3JpdGVhYmxlCj4gRVJST1I6IENvdWxkIG5vdCBmaW5kIGEgdmVyc2lvbiB0aGF0IHNhdGlzZmll
cyB0aGUgcmVxdWlyZW1lbnQgVFRTCj4gRVJST1I6IE5vIG1hdGNoaW5nIGRpc3RyaWJ1dGlvbiBm
b3VuZCBmb3IgVFRTCj4KPiBhbnkgaWRlYXM/Cj4KPiBjaGVlcnMgY2hyeXMKPgo+IEFtIDA5LjAy
LjIyIHVtIDExOjQwIHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoK
Pj4gSG93ZHkgUmFzdGlzbGF2LAo+Pgo+PiB5ZWEgQ29xdWkgaXMgYXdzb21lLiBpdCB3YXMgaW5p
dGlhbCBwYXJ0IG9mIG1vemlsbGFzIFRUUyBhbmQgU1RUIGVmZm9ydHMuCj4+IHdlIHJlYWxseSBz
aG91bGQgaGF2ZcKgIGFuIHNwZWVjaC1kaXNwYXRjaGVyIGRyaXZlciBmb3IgdGhhdCA6KS4KPj4K
Pj4gYnkgdGhlIHdheSwga2VlcCB1cCB5b3VyIGdyZWF0IHdvcmshIEp1c3QgdGFrZSBhIGxvb2sg
YXQgdGhlIEMjCj4+IHNwZWVjaC1kaXNwYXRjaGVyIGJpbmRpbmdzLgo+Pgo+PiBjaGVlcnMgY2hy
eXMKPj4KPj4gQW0gMDkuMDIuMjIgdW0gMTE6MjUgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uOgo+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pgo+Pj4gbWF5IGJlIEkndmUg
ZGlzY292ZXJlZCBBbWVyaWNhLCBidXQgeWVzdGVyZGF5IEkgbW9zdGx5IHJhbmRvbWx5IGNhbWUK
Pj4+IGFjcm9zczoKPj4+Cj4+PiBodHRwczovL2Vyb2dvbC5naXRodWIuaW8vZGRjLXNhbXBsZXMv
Cj4+Pgo+Pj4KPj4+IEFuZCB0aGUgdm9pY2UgaGFzIGNvbXBsZXRlbHkgYmxldyBteSBtaW5kIQo+
Pj4KPj4+IExpa2UsIEkga25ldyB0aGUgVFRTIGFyZWEgaGFzIGFkdmFuY2VkIHNpZ25pZmljYW50
bHkgaW4gdGhlIHJlY2VudAo+Pj4geWVhcnMsIGJ1dCBJIHRob3VnaHQgdGhlIG5ldyBuZXVyYWwg
dm9pY2VzIGFyZSBtb3N0bHkgY2xvc2VkIGZlYXR1cmVzIG9mCj4+PiBjb21wYW5pZXMgbGlrZSBH
b29nbGUgb3IgTWljcm9zb2Z0Lgo+Pj4KPj4+IEkgaGFkIG5vIGlkZWEgd2UgaGFkIHNvbWV0aGlu
ZyBzbyBiZWF1dGlmdWwgb24gbGludXggYW5kIGNvbXBsZXRlbHkKPj4+IG9wZW4tc291cmNlIQo+
Pj4KPj4+Cj4+PiBQbHVzLCBpdCdzIG5vdCBqdXN0IHRoZSBsaWNlbnNlIHRoYXQgbWFrZXMgdGhp
cyBzbyBpbnRlcmVzdGluZywgYnV0IGFsc28KPj4+IHRoZSB1c2FiaWxpdHkuCj4+Pgo+Pj4gVGhl
cmUgd2VyZSB0aGUgRGVlcG1pbmQgcGFwZXJzIGV2ZW4gYmVmb3JlIGFuZCBzb21lIG9wZW4gcHJv
amVjdHMgdHJ5aW5nCj4+PiB0byBpbXBsZW1lbnQgdGhlbSwgYnV0IHRoZSBsZXZlbCBvZiBjb21w
bGV0ZW5lc3MgYW5kIHVzYWJpbGl0eSB2YXJpZWQKPj4+IHNpZ25pZmljYW50bHksIGV2ZW4gaWYg
YSBwcm9qZWN0IHdhcyB1c2FibGUsIGdldHRpbmcgaXQgdG8gd29yayByZXF1aXJlZAo+Pj4gc29t
ZSBlZmZvcnQgKGF0IGxlYXN0IHRoZSBwcm9qZWN0cyBJIHNhdykuCj4+Pgo+Pj4KPj4+IFdpdGgg
Q29xdWksIHRoZSBzaXR1YXRpb24gaXMgY29tcGxldGVseSBkaWZmZXJyZW50Lgo+Pj4KPj4+IEFz
IHRoZSBhYm92ZSBtZW50aW9uZWQgYmxvZyBzYXlzLCBhbGwgeW91IG5lZWQgdG8gZG8gaXM6Cj4+
Pgo+Pj4KPj4+ICQgcGlwMyBpbnN0YWxsIFRUUwo+Pj4KPj4+ICQgdHRzIC0tdGV4dCAiSGVsbG8s
IHRoaXMgaXMgYW4gZXhwZXJpbWVudGFsIHNlbnRlbmNlLiIKPj4+Cj4+Pgo+Pj4gQW5kIHlvdSBo
YXZlIGEgc3ludGhlc2l6ZWQgcmVzdWx0IQo+Pj4KPj4+Cj4+PiBPciB5b3UgY2FuIGxhdW5jaCB0
aGUgc2VydmVyOgo+Pj4KPj4+ICQgdHRzLXNlcnZlcgo+Pj4KPj4+Cj4+PiBBbmQgcGxheSBpbiB0
aGUgd2ViIGJyb3dzZXIuIE5vdGUgdGhhdCB0aGUgYXVkaW8gaXMgc2VudCBvbmx5IGFmdGVyIGl0
J3MKPj4+IGZ1bGx5IHN5bnRoZXNpemVkLCBzbyB5b3UnbGwgbmVlZCB0byB3YWl0IGEgYml0IHRv
IGxpc3RlbiBpdC4KPj4+Cj4+Pgo+Pj4gVGhlIG9ubHkgcHJvYmxlbWF0aWMgcGFydCBpcyB0aGUg
bGltaXQgb2YgZGVjb2RlciBzdGVwcywgd2hpY2ggaXMgc2V0IHRvCj4+PiA1MDAgYnkgZGVmYXVs
dC4KPj4+Cj4+PiBJJ20gbm90IHN1cmUgd2h5IGRpZCB0aGV5IHB1dCBpdCBzbyBsb3csIHdpdGgg
dGhpcyB2YWx1ZSwgdGhlIFRUUyBpcwo+Pj4gdW5hYmxlIHRvIHNwZWFrIGxvbmdlciBzZW50ZW5j
ZXMuCj4+Pgo+Pj4KPj4+IEZvcnR1bmF0ZWx5LCB0aGUgZml4IGlzIHZlcnkgZWFzeS4gQWxsIEkg
bmVlZGVkIHRvIGRvIHdhcyB0byBvcGVuCj4+PiB+Ly5sb2NhbC9saWIvcHl0aG9uMy44L3NpdGUt
cGFja2FnZXMvVFRTL3R0cy9jb25maWdzL3RhY290cm9uX2NvbmZpZy5weQo+Pj4KPj4+IGFuZCBt
b2RpZnkgdGhlIGxpbmU6Cj4+Pgo+Pj4gIMKgIMKgwqDCoCBtYXhfZGVjb2Rlcl9zdGVwczogaW50
ID0gNTAwCj4+Pgo+Pj4gdG8KPj4+Cj4+PiAgwqAgwqDCoMKgIG1heF9kZWNvZGVyX3N0ZXBzOiBp
bnQgPSAwCj4+Pgo+Pj4KPj4+IHdoaWNoIHNlZW1zIHRvIGRpc2FibGUgdGhlIGxpbWl0Lgo+Pj4K
Pj4+Cj4+PiBBZnRlciB0aGlzIHN0ZXAsIEkgY2FuIHN5bnRoZXNpemUgdmVyeSBsb25nIHNlbnRl
bmNlcywgYW5kIHRoZSBxdWFsaXR5Cj4+PiBpcyBhYnNvbHV0ZWx5IGdsYW1vcm91cyEKPj4+Cj4+
Pgo+Pj4gU28gSSB3YW50ZWQgdG8gc2hhcmUuIEkgbWF5IGJlIGFjdHVhbGx5IHRoZSBsYXN0IHBl
cnNvbiBkaXNjb3ZlcnlpbmcgaXQKPj4+IGhlcmUsIHRob3VnaCBJIGRpZCBub3Qgc2VlIGl0IG1l
bnRpb25lZCBpbiBUVFMgZGlzY3Vzc2lvbnMgb24gdGhpcyBsaXN0Lgo+Pj4KPj4+Cj4+PiBJJ3Zl
IGV2ZW4gdGhvdWdodCBhYm91dCBjcmVhdGluZyBhIHNwZWVjaCBkaXNwYXRjaGVyIHZlcnNpb24g
b2YgdGhpcy4gSXQKPj4+IHdvdWxkIGNlcnRhaW5seSBiZSBkb2FibGUsIHRob3VnaCBJJ20gYWZy
YWlkIHdoYXQgd291bGQgdGhlIHN5bnRoZXNpcwo+Pj4gc291bmQgbGlrZSB3aXRoIHRoZSBpcnJl
Z3VsYXJpdGllcyBvZiBuYXZpZ2F0aW9uIHdpdGggYSBzY3JlZW5yZWFkZXIuCj4+PiBUaGVzZSB2
b2ljZXMgYXJlIGludGVuZGVkIGZvciByZWFkaW5nIGxvbmdlciB0ZXh0cyBhbmQgY29uc2lzdGVu
dAo+Pj4gcGhyYXNlcywgd2l0aCBwdW5jdHVhdGlvbiwgY29tcGxldGUgaW5mb3JtYXRpb24gZXRj
Lgo+Pj4KPj4+IFRoZSBpbnRvbmF0aW9uIHdvdWxkIHByb2JhYmx5IGdldCBhIGJpdCB3ZWlyZCB3
aXRoIGZvciBleGFtcGxlIGp1c3QgYQo+Pj4gaGFsZiBzZW50ZW5jZSwgYXMgaGFwcGVucyB3aGVu
IG5hdmlnYXRpbmcgYSBkb2N1bWVudCBvciB3ZWJwYWdlIGxpbmUgYnkKPj4+IGxpbmUuCj4+Pgo+
Pj4KPj4+IEFub3RoZXIgbGltaXRhdGlvbiB3b3VsZCBiZSB0aGUgb25lIG9mIHNwZWVkLiBPbiBt
eSBsYXB0b3AsIHRoZSByZWFsdGltZQo+Pj4gZmFjdG9yIChwcm9jZXNzaW5nIGR1cmF0aW9uIC8g
YXVkaW8gbGVuZ3RoKSBpcyBhcm91bmQgMC44LCB3aGF0IG1lYW5zIGl0Cj4+PiBjb3VsZCBoYW5k
bGUgcmVhbC10aW1lIHN5bnRoZXNpcyBhdCB0aGUgZGVmYXVsdCBzcGVlZCB3aXRob3V0IGRlbGF5
cy4KPj4+Cj4+Pgo+Pj4gVGhlIHNpdHVhdGlvbiB3b3VsZCBnZXQgbW9yZSBjb21wbGljYXRlZCB3
aXRoIGhpZ2hlciBzcGVlZHMsIHRob3VnaC4KPj4+Cj4+PiBJdCB3b3VsZG4ndCBiZSBpbXBvc3Np
YmxlLCBidXQgb25lIHdvdWxkIG5lZWQgYSBHUFUgdG8gaGFuZGxlCj4+PiBzaWduaWZpY2FudGx5
IGhpZ2hlciBzcGVlY2ggcmF0ZXMuCj4+Pgo+Pj4KPj4+IFNvIEkgd29uZGVyLgo+Pj4KPj4+Cj4+
PiBCdXQgYW55d2F5LCB0aGlzIGRlZmluaXRlbHkgbWFkZSBteSBkYXkuIDopCj4+Pgo+Pj4KPj4+
IEJlc3QgcmVnYXJkcwo+Pj4KPj4+Cj4+PiBSYXN0aXNsYXYKPj4+Cj4+Pgo+Pj4KPj4+Cj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

