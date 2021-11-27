Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A363C460014
	for <lists+blinux-list@lfdr.de>; Sat, 27 Nov 2021 17:09:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638029392;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QSMqnImvc4k489ayX1svbk/ttyxijZxPUAjqBz7x0UE=;
	b=iMsAUiNo2kWIAkkihKDlEfHl1N++5QyldPn0Vc7auM2TkFCwnfnR4TMnmgp5wWi/BLj2ZY
	6C4VV5uhqAhmRNTOIkBNqsZIFLucwoDq2Omib+NB5341JuTfEqFZKpgbv+UsJScwbkPKd6
	V3Fw2zK/lSrrparE+6qFMRleWiPDJRw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-242-eyCDV3miOgq-Lgg0nRVQnA-1; Sat, 27 Nov 2021 11:09:26 -0500
X-MC-Unique: eyCDV3miOgq-Lgg0nRVQnA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9B2F845EEB;
	Sat, 27 Nov 2021 16:09:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90F6860BE5;
	Sat, 27 Nov 2021 16:09:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EDB14BB7C;
	Sat, 27 Nov 2021 16:09:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARG8pUj005413 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 11:08:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 26D752026D65; Sat, 27 Nov 2021 16:08:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FC1A2026D7F
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 16:08:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB8278011A5
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 16:08:45 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-14-EmbaJ9EWPC2Bzdni5yb2dw-1; Sat, 27 Nov 2021 11:08:44 -0500
X-MC-Unique: EmbaJ9EWPC2Bzdni5yb2dw-1
Received: by mail-qt1-f180.google.com with SMTP id l8so11864485qtk.6
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 08:08:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=selFWZfJMq/hw6P6JIol3zGa+NDtL74py1ufwvsSAEo=;
	b=VSQSMk1gtAWRiKtDc5OEH1KD5cxQmwRGiblgQR5sjN5xIJLP5avbuXD3koTCdtLwA1
	XM+7rHqztEf7WXmUX3/IYejH6Z2jm+pOWaEBMiksHkjtC6r1muR56Pleo7uhR5Hksikp
	vCmXfX2j4B+xjJ66zatT6E69d/F5+OoJd9qB7nnnIhQo/D0G8S7OVIxrBoKoOaRBUWj+
	ZeRMMLdRjCuJxP8iIkxjLZ68o7jJB+xyEXNZkpmdmJhD8CKnnwYl1yOKF00EmOt/Wd6L
	cgsRLILrOY02VKOFGQ+Z+mM+FATcph6JWGjPmGoGgFl/Pyz8YEidRTx6UlG+hLM7dDw6
	XbrQ==
X-Gm-Message-State: AOAM532vthWRA7nOE78zobiY8VvV7fADmTrsWwN9C/2SqsLpRqNxCgyq
	2E0Xf4Gyoi0NCiLGUdjoK5WHZjg8C61MMkv4
X-Google-Smtp-Source: ABdhPJygWSc1ebi3Fy5EWDLzv4SZf5TFJlMmBUD99O42zGVPhpPEwGWw0uiRQZXWuryNwSwlSgJmjQ==
X-Received: by 2002:ac8:5e0f:: with SMTP id h15mr32688715qtx.123.1638029323123;
	Sat, 27 Nov 2021 08:08:43 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id k2sm5244925qtg.35.2021.11.27.08.08.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Nov 2021 08:08:42 -0800 (PST)
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<47a91597-fac1-e156-ffa1-514f174ffe36@slint.fr>
	<52d9d2ac-c3ad-cb3a-d24d-2ffcd3a19e39@gmail.com>
	<ef72ac37-238b-4d38-8e50-c0fb97ae2b35@slint.fr>
Message-ID: <1f1b54c7-4964-7d62-c086-913ce94928f3@gmail.com>
Date: Sat, 27 Nov 2021 11:08:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ef72ac37-238b-4d38-8e50-c0fb97ae2b35@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aGVsbG8gRGlkaWVyIGFuZCBhbGwsCgpUaGFua3MgYSBtaWxsaW9uIGZvciB1cGRhdGluZyB0aGUg
eW91dHViZS1kbCB0byB5dC1kbHAuIEl0IG1hZGUgYSBodWdlIApkaWZmZXJlbmNlIGluIHRlcm1z
IG9mIGRvd25sb2FkIHNwZWVkLiBXaGVuIEkgdHJpZWQgeW91dHViZS1kbCBJIHdhcyAKZGlzYXBw
b2ludGVkLiBJdCB0b29rIGFsbW9zdCAxNSBtaW51dGVzIHRvIGRvd25sb2FkIGEgZml2ZSBtaW51
dGVzIAp2aWRlby4gd2l0aCB5dC1kbHAgaXQgdG9vayBoYWxmIGEgbWludXRlIHRvIGRvd25sb2Fk
IHRoZSBzYW1lIHZpZGVvLgoKSSBoYXZlIGEgcXVlc3Rpb24gdGhvdWdoLiBXaGF0IGlzIHRoZSBj
b3JyZWN0IGZvcm1hdCB0byBzcGVjaWZ5IHRoZSAKZm9sZGVyIHdoZXJlIEkgd2FudCB0aGUgZG93
bmxvYWRlZCB0cmFja3MgdG8gZ28gdG8/IEkgdHJpZWQgLUZvbGRlciwgCi0tRm9sZGVyIGFuZCAv
Rm9sZGVyLyBidXQgaXQgZGlkIG5vdCB3b3JrLiBJdCBzaW1wbHkgZHVtcGVkIHRoZSB0cmFja3Mg
Cm9uIG15IGRlc2t0b3AuCgoKQ2hlZXJzLAoKSWJyYWhpbQoKT24gMTEvMjYvMjEgNTowMiBBTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBIZWxsbyBJYnJhaGlt
LAo+Cj4gdGhlc2UgY29tbWFuZHMgbGlzdCBlYWNoIGNvbmZpZ3VyYXRpb24gZmlsZSBzaGlwcGVk
IGluIGEgbmV3bHkgaW5zdGFsbGVkCj4gcGFja2FnZSBpZiBhIG5vbiBpZGVudGljYWwgZmlsZSBi
ZWFyaW5nIHRoZSBzYW1lIG5hbWUgYWxyZWFkeSBleGlzdHMsIAo+IGFuZCBsZXQKPiB5b3UgZGVj
aWRlIHdoYXQgdG8gZG8uCj4gSW5pdGlhbGx5IHRoZSBuZXcgZmlsZSBoYXMgYmVlbiBpbnN0YWxs
ZWQgYWxvbmdzaWRlIHRoZSBvbGQgb25lLCBpdHMgCj4gbmFtZSBoYXZpbmcKPiB3aXRoIHRoZSAu
bmV3IGV4dGVuc2lvbiBpbnN0ZWFkIG9mIC5jb25mCj4KPiBZb3VyIGNob2ljZXMgYXJlOgo+Cj4g
MS4gcmVwbGFjZSB0aGUgb2xkIGZpbGUgYnkgdGhlIG5ldyBvbmUuIFRoZSBvbGQgb25lIHdpbGwg
YmUgYmFja2VkIHVwLCAKPiB0aGUKPiBzdWZmaXggYmVpbmcgY2hhbmdlZCBmcm9tIC5jb25mIHRv
IC5vcmlnCj4gMi4gZGVsZXRlIHRoZSBuZXcgY29uZmlndXJhdGlvbiBmaWxlLgo+IDMuIGRpc3Bs
YXkgdGhlIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIG9scyBhbmQgdGhlIG5ldyBmaWxlCj4gNC4g
dXNlIHRoZSBhcHBsaWNhdGlvbiB2aW1kaWZmIChvciBndmltZGlmZiBpbiBncmFwaGljYWwgbW9k
ZSkgdG8gCj4gZGlzcGxheSB0aGUKPiBkaWZmZXJlbmNlcyBiZXR3ZWVuIHRoZSBvbGQgYW5kIHRo
ZSBuZXcgZmlsZSBhbmQgbGV0IHlvdSBjaGVycnktcGljayAKPiB0aGUgb25lcwo+IHlvdSB3YW50
IHRvIGFwcGx5Cj4gNSBEbyBub3RoaW5nLiBUaGVuIHlvdSBjYW4gZGVhbCB3aXRoIHRoZSBkaWZm
ZXJlbmNlcyBvdGhlcndpc2Ugb3IgcnVuIAo+IGRvdG5ldyBvcgo+IGd0ay1kb3RuZXcgbGF0ZXIu
Cj4KPiBJZiB5b3UgZGlkbid0IGN1c3RvbWl6ZSB0aGUgIm9sZCIgY29uZmlndXJhdGlvbiBmaWxl
LCBpdCBpcyBzYWZlIHRvIAo+IHJlcGxhY2UgaXQKPiBieSB0aGUgbmV3IG9uZS4KPgo+IEkgc2hv
dWxkIHByb2JhYmx5IGluY2x1ZGUgdGhlc2UgZXhwbGFuYXRpb24gaW4gdGhlIFNsaW50IEhhbmRC
b29rLi4uCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4KPgo+IExlIDI2LzExLzIwMjEgw6AgMDM6MDEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGVsbG8g
RGlkaWVyLAo+PiBJcyB0aGlzIGNvbW1hbmQgbmVjZXNzYXJ5OjoKPj4gZG90bmV3wqAob3LCoGRv
dC1uZXctZ3RrwqBpbsKgYcKgZ3JhcGhpY2FswqBlbnZpcm9ubWVudCkuCj4+IEkgYW0gdW5kZXIg
dGhlIGltcHJlc3Npb24gdGhhdCBpc3N1aW5nIHRoaXMgY29tbWFuZCB3b3VsZCBvdmVycmlkZSBt
eSAKPj4gY3VzdG9taXplZCBzZXR0aW5ncy4gQW0gSSBjb3JyZWN0Pwo+PiBDaGVlcnMsCj4+IEli
cmFoaW0KPj4KPj4gT24gMTEvMjUvMjEgODowNSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhpIElicmFoaW0gYW5kIEFsbCwKPj4+Cj4+PiB5dC1kbHAg
aXMgbm93IHByb3ZpZGVkIGZvciBTbGludC4KPj4+Cj4+PiBJIGFtIGxpdHRsZSBsYXRlIGJlY2F1
c2UgSSB0b29rIHRoaXMgb2NjYXNpb24gdG8gdXBncmFkZSBmZm1wZWcsIG1wdiAKPj4+IGFuZCB2
bGMuIG1wdiBub3cgdXNlcyB5dC1kbHAgYXMgZG93bmxvYWRlciBpZiBhdmFpbGFibGUuCj4+Pgo+
Pj4gVG8ga25vdyBtb3JlOgo+Pj4gaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9wb3N0L3NsaW50
L2F1ZGlvLWFuZC12aWRlby1wYWNrYWdlcy11cGdyYWRlZAo+Pj4KPj4+IENoZWVycywKPj4+IERp
ZGllcgo+Pj4KPj4+IExlIDIyLzExLzIwMjEgw6AgMTY6NTAsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+PiBIZWxsbyBmcmllbmRzLAo+Pj4+Cj4+Pj4g
SSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgYXJlIGdvb2QgYXBwbGljYXRpb25zIGZvciBkb3dubG9h
ZGluZyBmcm9tIAo+Pj4+IHlvdXR1YmUgdGhhdCB3b3JrcyB3ZWxsIHdpdGggbGludXghIEkgYW0g
bG9va2luZyBmb3Igc29tZXRoaW5nIAo+Pj4+IHNpbWlsYXIgdG8gUG9udGUncyBtZWRpYSBkb3du
bG9hZGVyIHdoaWNoIHdvcmtzIHdlbGwgd2l0aCB3aW5kb3dzIAo+Pj4+IHNjcmVlbiByZWFkZXJz
LiBJcyB0aGVyZSBzdWNoIGFuIGFwcD8KPj4+Pgo+Pj4+IFRoZSBzZWNvbmQgYXBwbGljYXRpb24g
SSBhbSBob3BpbmcgdG8gZmluZCBpcyBhIGdvb2Qgd2VhdGhlciBhcHAuIEkgCj4+Pj4gdHJpZWQg
dG8gdGhlIHdlYXRoZXIgb24gdGhlIHRlcm1pbmFsIGFuZCBkaWQgbm90IGxpa2UgaXQgYXQgYWxs
LiAKPj4+PiBTbywgSSBhbSBob3BpbmcgdG8gZmluZCBhIGJldHRlciBhbHRlcm5hdGl2ZSB0aGF0
IHdvcmtzIG9uIHRoZSBndWkuCj4+Pj4KPj4+PiBDaGVlcnMsCj4+Pj4KPj4+PiBJYnJhaGltCj4K
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

