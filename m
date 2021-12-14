Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 348C1474ECD
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 00:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639526092;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0ilddRYbegwzebVKdVFn4Mo6/eghV4FFg0iUYI5Ll+U=;
	b=NPgR3BRvhLX7Jk6pg4ih18KVSRSaRl+HPkya5X8y/tBhOM06fHqqiRDMJa6Kx6CD8Inco8
	DSaevGeb0wpjtq9JF9HIzwlaY8TtKR+dUH5NAQrLKmBWFyjbbR7Kiq4RdlMj7WqDwyGuWD
	RhlSwBUXNgza6TRG2JoGiAjvAj2STms=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-zmWs6aXKOme2_gzSsJDW-w-1; Tue, 14 Dec 2021 18:54:48 -0500
X-MC-Unique: zmWs6aXKOme2_gzSsJDW-w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CA20100C660;
	Tue, 14 Dec 2021 23:54:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F9C37B01E;
	Tue, 14 Dec 2021 23:54:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F6A04BB7B;
	Tue, 14 Dec 2021 23:54:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BENORLr030207 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 18:24:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 687541402403; Tue, 14 Dec 2021 23:24:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 641011427AFD
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 23:24:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4AE34101A52D
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 23:24:27 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-542-s-W1zMlFMqm40U1L7-UFEw-1; Tue, 14 Dec 2021 18:24:25 -0500
X-MC-Unique: s-W1zMlFMqm40U1L7-UFEw-1
Received: by mail-wr1-f50.google.com with SMTP id o13so34992860wrs.12
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 15:24:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=sNtIySE+a2TK557zFrTh1PRKqDbDK3DjkJ1pNS5cV/4=;
	b=evP7vMikiOPjh+2P4ao0T/dpcG5V8OXTb9xa2rTyjvqdFwqhtHfOdCOk7+jWyJyGsh
	IDoHxHy6mNU7MBoXF85XOx2Bocp/AN8+mD4P1u2fDq4dUYV84dF49oyvhv0E86WnyvIz
	tgHgIMPTL1d7IaZB7jJo9yfbPS4ZOwbFBPet68ED15rltpj9uM7+Zd5tmmCS9mtrbta5
	3C6ztmJ1b6af81EARFAi1mtYqm7pxQj5eXvcNHfPXPepIwhjVO88za6E4u8mHgUg+eO9
	lg+aDHz/feVZpTLFP0vQxo0/f4YdbVj6hR1CFdhAuTu/7d6x/LdbcvI+ufZIHl+jHr8W
	iZ3w==
X-Gm-Message-State: AOAM533Dqw1GJSYX3Uv0hb02HT3z1m1Tw9eoRyAwzNVSR0O0wNpAkGq7
	6cEKbuuTLIGTNItawuFL5GQS/pVRKdnp/A==
X-Google-Smtp-Source: ABdhPJz5GrxKvK2t3iXqWAhLkYBfzuNCIScxaBn7DMRQ8/LpdFax/7xt/U8dKMEBnBTY6Ta5fEcWWw==
X-Received: by 2002:a05:6000:1869:: with SMTP id
	d9mr1903842wri.416.1639524264107; 
	Tue, 14 Dec 2021 15:24:24 -0800 (PST)
Received: from [10.0.2.15] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id j32sm24113wms.40.2021.12.14.15.24.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 15:24:23 -0800 (PST)
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<4ebfc7c4-8cdf-230d-c108-a1ac4838a410@gmail.com>
	<alpine.NEB.2.23.451.2112141726360.9754@panix1.panix.com>
Message-ID: <36fe403a-8db5-9b7c-08d0-0b1bc80a2025@gmail.com>
Date: Tue, 14 Dec 2021 23:24:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2112141726360.9754@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlcmUncyBhIG5vdGUgaW4gci9hcmNobGludXggYWJvdXQgdGhpcyB2ZXJ5IHRoaW5nLiBJZiBp
dCdzIG5vdCB0b3Agb2YgCnRoZSBwaWxlLCBpdCBzaG91bGQgYmUuLi4KCkl0IGJhc2ljYWxseSBz
YWlkIDMuMTAgaXMgaW4gY29yZS4gUmVidWlsZCB5b3VyIHBhY2thZ2VzCgpIZXJlIGlzIHRoZSBs
aW5rIHRvIHNhaWQgbm90ZSBhYm91dCBpdC4gU28geWVzLCByZWJ1aWxkIHlvdXIgQVVSIHBhY2th
Z2VzCgpodHRwczovL3d3dy5yZWRkaXQuY29tL3IvYXJjaGxpbnV4L2NvbW1lbnRzL3JmNmM4NC9w
c2FfcHl0aG9uXzMxMF9pc19pbl9jb3JlX3JlYnVpbGRfeW91cl9hdXIvCgpMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFRoYXQncyBlbnRpcmVseSBwb3NzaWJsZSEg
IE9uZSBvciBtb3JlIHBhY2thZ2VzIG1heSBub3QgaGF2ZSBiZWVuCj4gcmUtYnVpbHQuCj4KPgo+
IE9uIFR1ZSwgMTQgRGVjIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4KPj4gSnVzdCBhIHRob3VnaHQsIGJ1dCBJIHdvbmRlciBpZiBweXRob24gMy4xMCBp
cyB0aGUgcHJvYmxlbSBhcyB5ZXN0ZXJkYXkgSSBoYWQKPj4gYSBqZW51eHggc3lzdGVtIHdoaWNo
IGdvdCB0aGUgcHl0aG9uIHBhY2thZ2VzIHVwZGF0ZXMgYW5kIGFmdGVyIHJlYm9vdGluZywgSQo+
PiBoYWQgbm8gc3BlZWNoIHNvIHBlcmhhcHMgdGhlcmUgaXMgYSBwYWNrYWdlIGluIGplbnV4IHdo
aWNoIGlzIG5vdCB5ZXQKPj4gY29tcGF0aWJsZS4KPj4KPj4KPj4gTWF0dGhldwo+Pgo+Pgo+Pgo+
PiBPbiAxMi8xNC8yMDIxIDc6NDYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+Pgo+Pj4gSSBkaWQgdXNlIHRoZSBsYXRlc3QgYXMgb2Yg
YWJvdXQgMTUgaG91cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlmeSB0aGUgaXNvLgo+Pj4KPj4+Cj4+
PiBUaGUgaXNzdWUgdGhpcyB0aW1lIGlzIHRoYXQgYWZ0ZXIgcnVubmluZyB0aGUgaW5zdGFsbGVy
IGFuZCByZWJvb3RpbmcsCj4+PiBub3RoaW5nIHNwb2tlLiB0aGUgc2VlaW5nQUkgb24gdGhlIGlw
aG9uZSBjb3VsZCByZWFkIHRoZSBzY3JlZW4ganVzdCBmaW5lLAo+Pj4gYnV0IEkgY291bGRuJ3QK
Pj4+Cj4+Pgo+Pj4gTGFzdCB0aW1lIGl0IHdhcyBvcmNhIGluIE1hdGUgdGhhdCBkaWRuJ3Qgd2Fu
dCB0byBjb21lIG9uLCBubyBtYXR0ZXIgd2hhdCBJCj4+PiBkby4KPj4+Cj4+Pgo+Pj4gSSBmb3Vu
ZCB0aGF0IHdpdGggSmVudXgsIG5ldmVyIGV4cGVjdCB0aGUgc2FtZSB0aGluZyB0byBnbyB3cm9u
ZyB0d2ljZSwKPj4+IGhvd2V2ZXIgc29tZXRoaW5nIHdpbGwgYnJlYWsuCj4+Pgo+Pj4KPj4+IFdh
cm0gcmVnYXJkcywKPj4+Cj4+Pgo+Pj4gQnJhbmR0Cj4+Pgo+Pj4gT24gMjAyMS8xMi8xNCAxNDoz
MSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBKZW51eCBn
ZXRzIHJlZ3VsYXIgdXBkYXRlcyBsYXRlc3QgaXMgMjAyMS4xMS4xNyB1bmxlc3MgdGhhdCBjaGFu
Z2VkIHRvZGF5Lgo+Pj4+IERpZCB5b3UgdmVyaWZ5IHlvdXIgaXNvIGRvd25sb2FkP8KgIElmIEkg
ZmluZCBhbiAuc2hhNTEyIGZpbGUgZmlsZSBmb3IgYW4KPj4+PiBpc28sIEkgd29uJ3QgaW5zdGFs
bCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdpdGggdGhlIC5zaGE1MTIKPj4+
PiBmaWxlLsKgIFNvIHR3byBwb3RlbnRpYWwgcHJvYmxlbXMgbm90IHVzaW5nIGN1cnJlbnQgSmVu
dXggaW5zdGFsbCBpc28gb3IKPj4+PiBmYWlsZWQgdG8gdmVyaWZ5IGlzby7CoCBJZiB5b3UgZG9u
J3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxlbXMsIHBsZWFzZSB3cml0ZQo+Pj4+IGRubC5uYXNoQGdt
YWlsLmNvbSBhbmQgbGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiB5
b3VyCj4+Pj4gaW5zdGFsbCBmYWlsLsKgIFRoYXQgb25lIGlzIHRoZSBkZXZlbG9wZXIuCj4+Pj4K
Pj4+Pgo+Pj4+IE9uIFR1ZSwgMTQgRGVjIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4KPj4+Pj4gSGksCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEplbnV4IGZh
aWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tpcCBmb3Igbm93LCB0
aGF0IGlzCj4+Pj4+IHVubGVzcwo+Pj4+PiB0aGUgZGV2IGFjdHVhbGx5IGZpeGVzIHRoZSB0aGlu
Zy4KPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBhbSBvbiBGZWRvcmEsIGZvciBub3csIGJlY2F1c2UgaXQg
d2FzIHRoZSBuZWFyZXN0IFVzYiBzdGljayBJIGNvdWxkIGdyYWIKPj4+Pj4gcXVpY2tseS4KPj4+
Pj4KPj4+Pj4KPj4+Pj4gSSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5v
dGhlciBnby4gV2h5IG5vdD8KPj4+Pj4KPj4+Pj4gT24gMjAyMS8xMi8xNCAxMzowNSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+ICDCoMKgb3IgTWFuamFy
byBBcmNoaXRlY3QuCj4+Pj4+Pgo+Pj4+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3
aXRoIHRoZSB2YW5pbGxhIEFyY2ggSVNPIGFuZCB0aGUgZ3VpZGVkCj4+Pj4+PiBpbnN0YWxsZXIg
KHRoZSBhcmNoaW5zdGFsbCBvbmUpLCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgdGFsa2luZywg
d2VudAo+Pj4+Pj4gdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBh
bmQgdGhlbiBwdXQKPj4+Pj4+IHNwZWVjaC1kaXNwYXRjaGVyL09yY2Evdm9pY2VzIGFuZCBhIHdp
bmRvdyBtYW5hZ2VyIG9uIG9uY2UgdGhlIHN5c3RlbSB3YXMKPj4+Pj4+IGluc3RhbGxlZC4KPj4+
Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSmVudXggaGFzIG5ldmVyIHJlYWxseSB3b3JrZWQgZm9yIG1lIG9u
IGEgVk0gb3IgYmFyZSBtZXRhbCBhdCBhbGwsCj4+Pj4+PiB3aGVyZWFzCj4+Pj4+PiB0aGUgb2Zm
aWNpYWwgYXJjaCBJU08gaXMgd29ya2luZyByYXRoZXIgd2VsbCwgYW5kIEkgZHVubm8gaWYgdGhl
Cj4+Pj4+PiBBcmNoaXRlY3QKPj4+Pj4+IGVkaXRpb24gaXMgMzYvNjQgYml0IG9yIDMyYml0IG9u
bHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRseSwgSSd2ZSBnb3QgYQo+Pj4+Pj4gNjRiaXQgVUVG
SSBzeXN0ZW0gc28gdGhlIG9mZmljaWFsIElTbyB3b3JrcyBmbGF3bGVzc2x5IG9uIGl0IGhvd2V2
ZXIsIGJ1dAo+Pj4+Pj4gWU1NViBvbiB0aGF0IG9uZVllcywgYnV0IHlvdSBwcm9iYWJseSBkb24n
dCB3YW50IHRvIGhlYXIgaXQgaWYgeW91IGFyZQo+Pj4+Pj4gc2V0Cj4+Pj4+PiBvbiB1c2luZyBK
ZW51eCBob3dldmVyLgo+Pj4+Pj4KPj4+Pj4+IE9uIDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+IEhpIGFsbCwKPj4+Pj4+Pgo+
Pj4+Pj4+IEkgZGVjaWRlZCB0byBnaXZlIEplbnV4IGFub3RoZXIgZ28sIGxhc3QgdGltZSwgbm8g
bWF0dGVyIHdoYXQgSSB0cmllZCwgSQo+Pj4+Pj4+IGNvdWxkbid0IGdldCBvcmNhIHRvIGNvbWUg
b24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lzdGVtLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRG9lcyBh
bnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pj4+Pj4+Cj4+Pj4+Pj4gQWxzbywgaWYgdGhpcyBkb2Vz
bid0IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIE1hbmphcm8KPj4+Pj4+
PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2luZyIgZ290IHVwZGF0ZWQgYSBsaXR0
bGUgd2hpbGUgYWdvLCBhbmQKPj4+Pj4+PiBpZiwgYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0IHdv
cmsgb3V0LCBJJ2QgbGlrZSB0byBnaXZlIHRoYXQgb25lIGEgZ28uCj4+Pj4+Pj4KPj4+Pj4+PiBU
aGFua3Mgc28gbG9uZy4KPj4+Pj4+Pgo+Pj4+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Pgo+Pj4+
Pj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Pj4+Pgo+Pj4+Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29r
IEFpcgo+Pj4+Pj4+Cj4+Pj4+Pj4gQ29udGFjdDoKPj4+Pj4+Pgo+Pj4+Pj4+IFBob25lOiArMjcg
KDApNjAgNTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4KPj4+Pj4+Pgo+Pj4+Pj4+IEVtYWls
OiBicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSA8bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBAZ21h
aWwuY29tPgo+Pj4+Pj4+Cj4+Pj4+Pj4gVHdpdHRlcjogQGJyYW5kdHN0ZWVua2FtcCA8aHR0cDov
L3d3dy50d2l0dGVyLmNvbS9icmFuZHRzdGVlbmthbXA+Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+
Cj4+Pj4+Pj4KPj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

