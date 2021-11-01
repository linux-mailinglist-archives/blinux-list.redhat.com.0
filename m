Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF2E4411A7
	for <lists+blinux-list@lfdr.de>; Mon,  1 Nov 2021 01:24:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635726253;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WFL91ypY6tSTc95QcPbVQ/ReJBBs26RGwsyowgWxBJY=;
	b=ATFv5t/7VHaEzbOro24kPu0o2C0ap1ZBzxozzyHpA4ibR/nbZEIRmsLUnO+1a9n3FmvqBR
	LbkazRhZAIlSMWUsnbtM2a4ROsAJJ54/vK9z7jGjTgV172w6Rb/zjDKh8fzUJaXy58ZtTj
	vd5H9TCrVu/gaferKVQK6SVye0fm6uo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-IpYe2OXSOFebW09Q6v4DFQ-1; Sun, 31 Oct 2021 20:24:10 -0400
X-MC-Unique: IpYe2OXSOFebW09Q6v4DFQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6767D1808310;
	Mon,  1 Nov 2021 00:24:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 799F060CC9;
	Mon,  1 Nov 2021 00:24:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C3D944A704;
	Mon,  1 Nov 2021 00:23:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A10MML0015234 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 31 Oct 2021 20:22:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7568151E2; Mon,  1 Nov 2021 00:22:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB5B51DD
	for <blinux-list@redhat.com>; Mon,  1 Nov 2021 00:22:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B7C2101AA64
	for <blinux-list@redhat.com>; Mon,  1 Nov 2021 00:22:19 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-206-xUaD5PG6MfSFIuER5SY-pw-1; Sun, 31 Oct 2021 20:22:17 -0400
X-MC-Unique: xUaD5PG6MfSFIuER5SY-pw-1
Received: by mail-qt1-f177.google.com with SMTP id v17so14512187qtp.1
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 17:22:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=IOuc0+Rw9eU3/z2QCqZ7IS5hCUlJrnaR/8Ty3ycJzRE=;
	b=1h/vgmFuFRg0mSsJ5KuebudJdzDXFWLLhv+K3+twAhT0XsbOIjPCPoGMnZxIjBDUzr
	HYoAvGy/RSlrk7nUpKRGcr6Q52JKbjOWGSBFcyOcNhydmMl01ZKH9k7O+15qfzv5rL7b
	lLTsPUoBh2uhdvL9WsTJDqHXZ8WmuL/K9PBGCGcB2ZP9+Yk2frjwvTr3lB64D7E/gT4S
	wrh+/Ss7s2Uo5MJq9iynyz9Kv03dPQNk2YLz0ltQ+S0m2w8iESGRYpixOAJbGDA/X6ob
	UMNwJkURvNVcI+u6nrvyDOSv9jP4ZwcI3YTcwplgKeCjxMglmC9GityKoEiBVpgkuSZG
	DxXg==
X-Gm-Message-State: AOAM530MVa5+Ae+/bqM7V/NN22IQVSdSqDJUA0HEAP9D0tLa27enfNcN
	ec3YlDnqHPBcD+ccn8EDZEeyu5ecBsccaA==
X-Google-Smtp-Source: ABdhPJxPsajJKbbuUJn65o+ELEfjR1HfdK6IZSY+OeDYQdqPfbbGYC5N+DjAcpOZW4029Q2WXdfW5A==
X-Received: by 2002:a05:622a:4cf:: with SMTP id
	q15mr27025014qtx.265.1635726136514; 
	Sun, 31 Oct 2021 17:22:16 -0700 (PDT)
Received: from darkstar.example.slint ([2601:152:4000:330::9])
	by smtp.gmail.com with ESMTPSA id
	f10sm9486533qkp.135.2021.10.31.17.22.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 31 Oct 2021 17:22:15 -0700 (PDT)
Subject: Re: have any of you mannaged to successfully install linux alongside
	with windows?
To: blinux-list@redhat.com
References: <2ecf58b4-4c80-0018-4c80-93d5dcf4d476@slint.fr>
	<8182AB42-45DC-4800-8F7F-AA4D5D5CEB7F@gmail.com>
	<c1d01788-8258-39c2-e861-de8e4e8a1113@slint.fr>
	<49183B1B-18E5-4816-ADE1-FD439661F4F4@gmail.com>
Message-ID: <41d85622-37fc-ded1-011f-c2249be47865@gmail.com>
Date: Sun, 31 Oct 2021 20:22:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <49183B1B-18E5-4816-ADE1-FD439661F4F4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

VGhhbmtzIE1hdHRoZXcsCgpJIGFtIG5vdCB1c3VhbGx5IHRoYXQgYWR2ZW50dXJvdXMgd2hlbiBp
dCBjb21lcyB3aXRoIGRlYWxpbmcgd2l0aCAKb3BlcmF0aW5nIHN5c3RlbXMsIG5vbnRoZWxlc3Ms
IEkgZGFyZWQgdG8gaW5zdGFsbCBzbGludCBvbiBhbiBTRCBjYXJkLiAKSXQgdG9vayBhcHByb3hp
bWF0ZWx5IGhhbGYgYW4gaG91ciB0byBkbyB0aGUgaW5zdGFsbGF0aW9uLiBOb3cgSSBhbSAKc2Vu
ZGluZyB0aGlzIGVtYWlsIGZyb20gdGhpcyBTbGludCBpbnN0YWxsYXRpb24uIEkgZ3Vlc3MgSSB3
YXMgYSBsaXR0bGUgCm5lcnZvdXMsIHNvIEkgZG8gbm90IHJlbWVtYmVyIHRoYXQgU2xpbnQgYXNr
ZWQgbWUgaWYgSSB3YW50IHRvIGluc3RhbGwgCmFsb25nc2lkZSB3aW5kb3dzLiBJIGNob3NlIGF1
dG8gaW5zdGFsbGF0aW9uIGFuZCBpdCBwcmVzZW50ZWQgbWUgd2l0aCAKdGhlIGRyaXZlcyBhbmQg
b25lIG9mIHRoZW0gd2FzIHRoZSBkcml2ZSB3aGVyZSBteSB3aW5kb3dzIGluc3RhbGxhdGlvbiAK
cmVzaWRlcy4gSSB3YXMgYWZyYWlkIHRoYXQgaWYgSSBjaG9zZSBpdCBpdCB3b3VsZCB3aXBlIG15
IGVudGlyZSBoYXJkIGRpc2MuCgpDaGVlcnMsCgpJYnJhaGltCgpPbiAyMDIxLTEwLTMxIDE2OjE0
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4gSSBo
YXZlIGFuIGV4dGVybmFsIEhEICB3aGljaCBoYXMgZmVkb3JhIGxpdmluZyBvbiBpdCBxdWl0ZSB3
ZWxsIEkgIGhhdmUgaW5zdGFsbGVkIHVidW50dSBhbG9uZ3NpZGUgd2luZG93cyBzZXZlcmFsIHRp
bWVzIGFuZCBhdCB0aGUgcHJvbXB0IHdoZXJlIHVidW50dSBzZWFyY2hlcyBmb3Igb3RoZXIgc3lz
dGVtcyBvbiB5b3VyIGRpc2ssIG9uZSBvZiB0aGUgb3B0aW9ucyBpcyBpbnN0YWxsIGFsb25nc2lk
ZSB3aW5kb3dzIGlmIHRoaXMgaXMgc2VsZWN0ZWQsIHVidW50dSB3aWxsIGRvIHRoZSByZXNpemlu
ZyBmb3IgeW91LiAgSWYgeW91IHdhbnQsIHlvdSBjb3VsZCBkbyBhIGJhY2t1cCBmaXJzdCB0byBi
ZSBzdXJlIHRoYXQgZXZlcnl0aGluZyBpcyBzYXZlZCBmaXJzdCBidXQgYWxsIHNob3VsZCBiZSBn
b29kLiAgSWYgdW5zdXJlLCB5b3UgY291bGQganVzdCBpbnN0YWxsIHRvIGEgZXh0ZXJuYWwgZHJp
dmUgYXMgSSBkaWQgYW5kIGV2ZXJ5dGhpbmcgc2hvdWxkIHdvcmsgdGhhdCB3YXkuCj4KPiBNYXR0
aGV3Cj4KPgo+Cj4+IE9uIE9jdCAzMSwgMjAyMSwgYXQgMzo1MCBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+
IFlvdSBjYW4gaW5zdGFsbCBpbiBhIDMyIEdCIG9yIHByZWZlcmFibHkgaW4gYSA2NCBHQiBVU0Ig
c3RpY2sgYnV0IGl0IHdpbGwgYmUKPj4gcmF0aGVyIHNsb3cuCj4+Cj4+IEJldHRlciwgaWYgdGhl
IGNvbXB1dGVyIGhhcyBhbiBTRCBjYXJkIHNsb3QgYW5kIGlzIGFibGUgdG8gYm9vdCBmcm9tIGEg
U0QgY2FyZAo+PiAobm90IGFsbCBkbyksIHVzZSBhIGdvb2QgcXVhbGl0eSBTRCBjYXJkLgo+Pgo+
PiBJbiBhbnkgY2FzZSBhbiBleHRlcm5hbCBTU0QgaXMgd2F5IGZhc3Rlci4KPj4KPj4gQ2hlZXJz
LAo+PiBEaWRpZXIKPj4KPj4gTGUgMzEvMTAvMjAyMSDDoCAyMDoyOCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+PiBJIGFtIGdvaW5nIHRocm91Z2ggdGhl
IGhhbmRib29rIGFuZCB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0aGUgdmFyaW91cyBjb25jZXB0cy4g
SSBoYXZlIG5vdCBzZWVuIHRoZSBpbnN0YWxsYXRpb24gaW4gYSB2aXJ0dWFsIGJveCB5ZXQuIEkg
YW0gd29uZGVyaW5nIGlmIEkgY2FuIGluc3RhbGwgaXQgb24gYSAzMiBvciA2NCBHQiBVU0Igc3Rp
Y2ssIG9yIGRvZXMgaXQgaGF2ZSB0byBiZSBhbiBleHRlcm5hbCBTU0Q/Cj4+PiBSZWdhcmRzLAo+
Pj4gSWJyYWhpbQo+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+IE9uIE9jdCAzMSwgMjAyMSwg
YXQgMjo0MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4g77u/SGkgSWJyYWhpbS4KPj4+Pgo+Pj4+IE5vLCB0
aGVyZSBpcyBubyBsaXZlIGluc3RhbGwgZm9yIFNsaW50Lgo+Pj4+Cj4+Pj4gSG93ZXZlcjoKPj4+
Pgo+Pj4+IDEpIEJlZm9yZSB5b3UgaW5zdGFsbCBpdCBvbiB5b3VyIGhhcmQgZGlzaywgeW91IGNh
biBpbnN0YWxsIGFuZCBydW4gaXQgaW4gYQo+Pj4+IFZpcnR1YWxCb3ggdmlydHVhbCBtYWNoaW5l
LiBUaGVuLCBjaG9vc2UgdGhlIGludGVsIGhkIGF1ZGlvIGNvbnRyb2xsZXIgcmlnaHQKPj4+PiBh
ZnRlciB0aGUgdmlydHVhbCBtYWNoaW5lIGNyZWF0aW9uLiB0byBwcmV2ZW50IGxvc3Mgb2Ygc3Bl
ZWNoIGR1cmluZwo+Pj4+IGluc3RhbGxhdGlvbi4KPj4+Pgo+Pj4+IDIpIElmIHlvdSBjYW4gYWZm
b3JkIGl0IHlvdSBjYW4gaW5zdGFsbCBTbGludCBpbiBhIGRlZGljYXRlZCBoYXJkIGRyaXZlIG9y
IFNTRAo+Pj4+IHdoaWNoIGNhbiBiZSBhbiBhbiBpbnRlcm5hbCBzZWNvbmQgZHJpdmUgb3IgYW4g
ZXh0ZXJuYWwgZHJpdmUgVVNCIGNvbm5lY3RlZC4KPj4+Pgo+Pj4+IDMpIFlvdSBjYW4gc2FmZWx5
IHNoYXJlIGEgZHJpdmUgYmV0d2VlbiBXaW5kb3dzIGFuZCBTbGludCwgaWYgV2luZG93cyBib290
cyBpbgo+Pj4+IFVFRkkgbW9kZS4KPj4+Pgo+Pj4+IDQpIEluIGFueSBjYXNlIHRoZSBpbnN0YWxs
ZXIgd2lsbCBwcmVzZW50cyB5b3UgYWxsIHBvc3NpYmlsaXRpZXMgZm9yCj4+Pj4gaW5zdGFsbGF0
aW9uIGFuZCB3aWxsIGxldCB5b3UgcmV2aWV3IGFsbCBpbnN0YWxsYXRpb24gb3B0aW9ucyBiZWZv
cmUgd3JpdGluZwo+Pj4+IGFueXRoaW5nIG9uIGEgaGFyZCBkaXNrLiBJZiB5b3UgY2hhbmdlIHlv
dXIgbWluZCB5b3Ugd2lsbCBiZSBhYmxlIHRvIGNoYW5nZQo+Pj4+IGFueSBvcHRpb24uIElmIHlv
dSBkZWNpZGUgdG8gaW5zdGFsbCBsYXRlciBvciBub3QgYXQgYWxsLCBhZnRlciBhIHJlYm9vdCBX
aW5kb3dzCj4+Pj4gd2lsbCBzdGFydCBhcyB1c3VhbC4KPj4+Pgo+Pj4+IEFmdGVyIGluc3RhbGxh
dGlvbiB5b3Ugd2lsbCBiZSBhYmxlIHRvIGNob29zZSB3aGljaCBzeXN0ZW0gdG8gc3RhcnQgYXQg
Ym9vdCB1cC4KPj4+PiBXaGVuIHlvdSB3aWxsIGhlYXIgYSBzb3VuZCB0ZWxsaW5nIHlvdSB0aGF0
IHRoZSBtYWNoaW5lIGlzIHJlYWR5IHRvIGJvb3QsIGp1c3QKPj4+PiBwcmVzcyBFbnRlciB0byBz
dGFydCBTbGludCBvciBwcmVzcyBhcnJvdyBkb3duIHRoZW4gRW50ZXIgdG8gc3RhcnQgV2luZG93
cy4KPj4+Pgo+Pj4+IEZlbGwgZnJlZSByZXF1aXJlIG1vcmUgZ3VpZGFuY2UgaW4gb25lIG9mIHRo
ZSBzdXBwb3J0IGNoYW5uZWxzIGxpc3RlZCBpbiB0aGUKPj4+PiBIYW5kQm9vay4KPj4+Pgo+Pj4+
IEhvcGUgdGhpcyBoZWxwcwo+Pj4+IERpZGllcgo+Pj4+IC0tCj4+Pj4gRGlkaWVyIFNwYWllcgo+
Pj4+IFNsaW50IG1haW50YWluZXIKPj4+PiBkaWRpZXIgYXQgc2xpbnQgZG90IGZyCj4+Pj4gTGUg
MzEvMTAvMjAyMSDDoCAxNjo0MSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
IMOpY3JpdCA6Cj4+Pj4+IFRoYW5rcyBhIG1pbGxpb24gRGlkaWVyLAo+Pj4+PiBUaGlzIGlzIGEg
Z3JlYXQgaGFuZGJvb2suIE9uZSBvZiB0aGUgdGhpbmdzIHdoaWNoIGRpc2NvdXJhZ2VkIG1lIGZy
b20gYWRvcHRpbmcgbGludXggaW4gdGhlIHBhc3Qgd2FzIHRoZSBsYWNrIG9mIGVhc3kgdG8gZm9s
bG93IGRvY3VtZW50YXRpb25zLiBFdmVyeXRpbWUgSSB0cmllZCwgSSBmb3VuZCBteXNlbGYgYnJv
d3NpbmcgaW4gaGlnaGx5IHRlY2huaWNhbCBkb2N1bWVudHMgdGhhdCBzb3VuZGVkIGxpa2UgYSBm
b3JlaWduIGxhbmd1YWdlIHRvIG1lLiBUaGlzIGhhbmRib29rIHNlZW1zIHRvIGF2b2lkIHRoaXMg
cHJvYmxlbS4KPj4+Pj4gSSB3aWxsIGNlcnRhaW5seSB0cnkgc2xpbnQsIGlmIGl0IGNhbiBiZSB1
c2VkIGFzIGEgbGl2ZSBpbnN0YWxsIHdpdGhvdXQgaGF2aW5nIHRvIHBoeXNpY2FsbHkgaW5zdGFs
bCBvbiBteSBoYXJkIGRpc2MuIEkgd2lsbCBhbHNvIGJyb3dzZSB0aGlzIGhhbmRib29rIHRvIGxl
YXJuIG1vcmUgYWJvdXQgc2xpbnQuCj4+Pj4+IFRoYW5rcyBmb3IgdGhpcy4gSSB3aWxsIGNlcnRh
aW5seSBuZWVkIHlvdXIgaGVscCBpZiBJIGluc3RhbGwgaXQgb24gbXkgaGFyZCBkaXNjLiBXaGF0
IEkgd2FudCBpZGVhbGx5IGlzIHRoZSBhYmlsaXR5IHRvIGhhdmUgYm90aCBsaW51eCBhbmQgd2lu
ZG93cyBydW5uaW5nIG9uIHRoZSBzYW1lIG1hY2hpbmUsIGFuZCBJIGNob29zZSB3aGljaCBvbmUg
dG8gc3RhcnQgYXQgYm9vdHVwLgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBJYnJhaGltCj4+Pj4+IE9u
IDEwLzMxLzIxIDQ6MDYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+PiBIZWxsbyBJYnJhaGltLAo+Pj4+Pj4gdGhpcyBpcyBlYXNpbHkgZG9uZSB3aXRo
IFNsaW50LCBpZiBXaW5kb3dzIGJvb3RzIGluIEVGSSBtb2RlOgo+Pj4+Pj4gaHR0cHM6Ly9zbGlu
dC5mci9kb2MvSGFuZEJvb2suaHRtbAo+Pj4+Pj4gQ2hlZXJzLAo+Pj4+Pj4gRGlkaWVyCj4+Pj4+
PiAtLQo+Pj4+Pj4gRGlkaWVyIFNwYWllcgo+Pj4+Pj4gU2xpbnQgbWFpbnRhaW5lcgo+Pj4+Pj4g
TGUgMzEvMTAvMjAyMSDDoCAwNDoxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdCA6Cj4+Pj4+Pj4gSGVsbG8gZm9sa3MsCj4+Pj4+Pj4gSSBoYXZlIGJlZW4gcGxh
eWluZyB3aXRoIExpbnV4IG1pbnQgYW5kIEFjY2Vzc2libGUgQ29jb251dCBmb3Igb3ZlciAyNCBo
b3Vycy4gSSBhbSBnZXR0aW5nIHRvIGxpa2UgdGhpcyBzeXN0ZW0uIEhvd2V2ZXIsIFdoZW4gSSBj
b250ZW1wbGF0ZWQgaW5zdGFsbGluZyBvbiBteSBoYXJkIGRpc2ssIEkgZm91bmQgdGhlIGluc3Rh
bGxhdGlvbiBwcm9jZXNzIGEgbGl0dGxlIGNvbmZ1c2luZyBhbmQgc2NhcnkuIEkgYWx3YXlzIHJl
dmVydGVkIGJhY2sgYW5kIGFib3J0ZWQgdGhlIGluc3RhbGxhdGlvbiB0byBwcmV2ZW50IGFuIHVu
aW50ZW5kZWQgZGFtYWdlIHRvIG15IHdpbmRvd3Mgb3BlcmF0aW5nIHN5c3RlbS4KPj4+Pj4+PiBJ
ZiBhbnkgb2YgeW91IGhhdmUgc3VjY2Vzc2Z1bGx5IG1hbmFnZWQgdG8gaW5zdGFsbCBsaW51eCBh
bG9uZ3NpZGUgd2l0aCB3aW5kb3dzIG9uIHRoZSBzYW1lIGhhcmQgZGlzaywgcGxlYXNlIGFkdmlz
ZSBtZSBvbiBob3cgdG8gZ28gYWJvdXQgaXQgc2FmZWx5Lgo+Pj4+Pj4+IFJlZ2FyZHMsCj4+Pj4+
Pj4gSWJyYWhpbQo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

