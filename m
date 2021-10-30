Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 859524409D2
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 17:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635606325;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T2l1kDAldpR79WEuMCCmGwANogpxkuJLHjGD8neJpNM=;
	b=Hto0KEuNu/8B5z/6XShJCFX0DC/8bafpOcMWS7E1ska4R2VRhMWSaUVSFE/iH83FGKjXVw
	A6wBvYXv4Sh2BptzqRBU2TJh2aDeSUAQiGKIKusD82bsa6N5FPYiYUjf2UjQwdONq159AU
	uw22sWi8zettBzix0ngJMvllqSOxqcI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-160-8le0Wb5-O56zwmq-QyVZnw-1; Sat, 30 Oct 2021 11:05:23 -0400
X-MC-Unique: 8le0Wb5-O56zwmq-QyVZnw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C1588018AC;
	Sat, 30 Oct 2021 15:05:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36C2017CEE;
	Sat, 30 Oct 2021 15:05:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55DCC1803B30;
	Sat, 30 Oct 2021 15:05:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UF55tB031269 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 11:05:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DE6B040CFD10; Sat, 30 Oct 2021 15:05:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D940E40CFD04
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:05:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF125101AA73
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:05:04 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-22-Uix01m9qOx2iQcm7af0pLA-1; Sat, 30 Oct 2021 11:05:02 -0400
X-MC-Unique: Uix01m9qOx2iQcm7af0pLA-1
Received: by mail-qt1-f172.google.com with SMTP id o12so1166767qtv.4
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 08:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=7srjV/De/vZJWKwChhq3QsvShcWqYNLHXTqYA/uJOmQ=;
	b=vypYq1cvSti+VTlwJMItOgUzKn8RnDgM73ujzdDCzoA+S3nEEKsnKNbgZsz2TpGnvi
	l/Hi/C8cr7+UbOG/5QxJro20p80Pxg9ok/DGYlY0tj5wsWFTuqgjzjmVk67cppPVoyG9
	sxuy7RmvH1ZWJ577RFhhBb4U7XDLYnRH4031v/47N3i9UNequ6f5lbnqekracZCOVDsZ
	ToluiJbWGudv+hMEmKzYz/MYh3YJ+5Si1rgqJbGCLY9M+0SxuKjpjY+4mATUZISlLlla
	hE/e5aooY61upUx+DwXKPTQ955O1l27gC1ayRC4ahWJ3Gpl0J9avFcPIaKN8E5BplIJC
	Em6A==
X-Gm-Message-State: AOAM531ETWkWSAUXu7v1myRCae4+XP9fcKb7Sf8sCtwIIPTKZvwIvi3d
	0WD4R6JmrglrjmcKSyZAx7P8X7wjOFs=
X-Google-Smtp-Source: ABdhPJyx/HHV/5xla5GqE3eUVuF7paCER2tM0enfp/d7oodbtNSN83uVrDPdK0qIDeAFZqRsUGYl4g==
X-Received: by 2002:a05:622a:11d1:: with SMTP id
	n17mr2379522qtk.357.1635606301323; 
	Sat, 30 Oct 2021 08:05:01 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	b21sm4623900qtk.69.2021.10.30.08.05.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 08:05:00 -0700 (PDT)
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
	<09D50FCC-309B-480D-A0F8-732E3E3D41B4@gmail.com>
Message-ID: <14c1c66c-871e-416b-2e71-0129a60500e2@gmail.com>
Date: Sat, 30 Oct 2021 11:04:58 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <09D50FCC-309B-480D-A0F8-732E3E3D41B4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from base64 to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UF55tB031269
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIG5vdCB1c2VkIGFjY2Vzc2libGUgY29jb251dCwgc28gSSBjYW4gbm90IGNvbW1lbnQg
b24gaXQuIExpbnV4IApNaW50IE1hdGUgaXMgbXVjaCBsaWtlIHVzaW5nIFdpbmRvd3MuIFRoZXJl
IGlzIGEgZGVza3RvcCBlbnZpcm9ubWVudCwgb24gCndoaWNoIHlvdSBjYW4gcGxhY2UgaWNvbnMg
Zm9yIHF1aWNrIGFjY2VzcyB0byB5b3VyIG1vc3QgdXNlZCBhcHBzIGFuZCAKZm9sZGVycy4gVGhl
cmUgYXJlIGFsc28gbWVudXMsIHN1Y2ggYXMgYSBTdGFydCBtZW51LCBzaW1pbGFyIHRvIFdpbmRv
d3MuIApIb3dldmVyLCBpbiBvcmRlciBmb3IgbWUgdG8gc3VjY2Vzc2Z1bGx5IGNvbXBsZXRlIHRo
ZSBjb25maWd1cmF0aW9uIG9mIAp0aGUgY29tcHV0ZXJzIHRoYXQgSSBhbSBzZXR0aW5nIHVwLCBp
dCBpcyBuZWNlc3NhcnkgZm9yIG1lIHRvIHVzZSB0aGUgCmNvbW1hbmQgbGluZSBlbnZpcm9ubWVu
dC4gVGhpcyBpcyBhbiBpbXBvcnRhbnQgcGFydCBvZiBMaW51eCBhbmQgaXMgCmFtYXppbmdseSBw
b3dlcmZ1bC4gTXkgdXNlcnMgc2hvdWxkIG5ldmVyIGhhdmUgdG8gaW50ZXJhY3Qgd2l0aCB0aGUg
CkxpbnV4IGNvbW1hbmQgbGluZSwgYXMgSSBoYXZlIGNvbmZpZ3VyZWQgdGhlaXIgY29tcHV0ZXJz
IGluIGEgbWFubmVyIAp0aGF0IHRoZXkgY2FuIGRvIHRoZWlyIGpvYnMgdGhyb3VnaCB0aGUgbWVu
dXMgYW5kIGRlc2t0b3AgaWNvbnMuCgpMaW51eCBoYXMgYSBzaWduaWZpY2FudCBsZWFybmluZyBj
dXJ2ZSwgYnV0IHRoZXJlIGFyZSBtYW55IHdlYiByZXNvdXJjZXMgCnRvIGhlbHAgd2l0aCB0aGF0
IGxlYXJuaW5nLiBJIGhhdmUgd29ya2VkIHdpdGggY29tcHV0ZXJzIGZvciBhbG1vc3QgNTAgCnll
YXJzIG5vdywgY3V0dGluZyBteSB0ZWV0aCBvbiBJQk0gbWFpbmZyYW1lIHN5c3RlbXMuIE15IGVu
dGlyZSBjYXJlZXIgCmhhcyBiZWVuIG9uZSBjb250aW51b3VzIGxlYXJuaW5nIGV4cGVyaWVuY2Uu
IEkgZW5qb3kgdGhlIGNoYWxsZW5nZSB0aGF0IApMaW51eCBoYXMgcHJvdmlkZWQgbWUgYW5kIGxv
b2sgZm9yd2FyZCB0byBleHBhbmRpbmcgbXkga25vd2xlZGdlIHdpdGggCnRoaXMgYW1hemluZyBP
Uy4KCkpvaG4KCgpPbiAxMC8zMC8yMDIxIDk6MjcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgSm9obiwKPiBJcyB0aGUgbWludCBsaW51eCB5b3UgbWVu
dGlvbmVkIG1lbnUgZHJpdmVuIGxpa2UgYWNjZXNzaWJsZSBjb2NvbnV0IG9yIGNvbW1hbmQgbGlu
ZSBiYXNlZD8gSW4gd2hhdCB3YXlzIGlzIGl0IGRpZmZlcmVudCBmcm9tIGFjY2Vzc2libGUgY29j
b251dCBpZiB5b3UgZ2F2ZSBpdCBhIHRyeT8KPiBJYnJhaGltCj4gCj4gU2VudCBmcm9tIG15IGlQ
YWQKPiAKPj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMTozOSBBTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IO+7
v0hpLAo+PiBJIGFtIGFsc28gcmVsYXRpdmVseSBuZXcgdG8gdXNpbmcgTGludXggYXMgYSBibGlu
ZCBwZXJzb24uIE92ZXIgdGhlIHBhc3Qgc2V2ZXJhbCBtb250aHMsIEkgaGF2ZSBkb3dubG9hZGVk
IGFuZCB0cmllZCBzZXZlcmFsIG9mIHRoZSByZWNvbW1lbmRlZCBMaW51eCBkaXN0cmlidXRpb25z
LiBBYm91dCBhIG1vbnRoIGFnbywgSSBjYW1lIGFjcm9zcyBMaW51eCBNaW50IHdpdGggdGhlIE1h
dGUgZGVza3RvcC4gSSBsaWtlIGl0IHZlcnkgbXVjaC4gSSBhbSBjdXJyZW50bHkgd29ya2luZyBv
biBhIHByb2plY3Qgd2hlcmUgSSBoYXZlIHRvIHNldHVwIExpbnV4IGNvbXB1dGVycyBmb3Igc2V2
ZXJhbCBzaWdodGVkIHBlb3BsZSBhbmQgSSBhbSB1c2luZyBNaW50IGFzIHRoZSBkaXN0cm8gdGhh
dCBJIGFtIGRlcGxveWluZy4gSSBhbSBoYXBweSB0byBzYXkgdGhhdCBJIHB1dCB0aGUgZmlyc3Qg
b2YgdGhlc2UgY29tcHV0ZXJzIGludG8gcHJvZHVjdGlvbiB0aGlzIHdlZWsuCj4+IFNvIGZhciwg
c28gZ29vZC4gVGhlcmUgYXJlIGEgZmV3IG1pbm9yIHRoaW5ncyB0aGF0IEkgd291bGQgbGlrZSB0
byBsZWFybiB0byB0d2VhayBvbiB0aGF0IHN5c3RlbSwgYnV0IEkgYW0gY29uZmlkZW50IHRoYXQg
a25vd2xlZGdlIHdpbGwgY29tZSB0byBtZSBvdmVyIHRpbWUuCj4+Cj4+IFRoZSBhY2Nlc3NpYmls
aXR5IGV4cGVyaWVuY2Ugd2l0aCBMaW51eCBNaW50IE1hdGUgaGFzIGJlZW4gdmVyeSBwb3NpdGl2
ZS4gQWZ0ZXIgZG93bmxvYWRpbmcgdGhlIGxpdmUgSVNPIGZyb20gbGludXhtaW50LmNvbSwgSSB1
c2VkIFJ1ZnVzIHJ1bm5pbmcgb24gbXkgV2luZG93cyA3IGNvbXB1dGVyIHRvIGNyZWF0ZSBhIGJv
b3RhYmxlICAgICBVU0IgZmxhc2ggZHJpdmUuIChodHRwczovL3J1ZnVzLmllL2VuLykgSSB1c2Vk
IGEgMTAgeWVhciBvbGQgTGVub3ZvIFRoaW5rcGFkIFgyMjAgZm9yIGFsbCBvZiB0aGUgdGVzdGlu
ZywgZmlyc3QganVzdCBydW5uaW5nIGZyb20gdGhlIGZsYXNoIGRyaXZlIGFuZCBsYXRlciwgaW5z
dGFsbGluZyBvbiBhIGZyZXNoIFNhbXN1bmcgRVZPIFNTRCBpbiB0aGUgWDIyMC4gUGVyZm9ybWFu
Y2Ugb24gdGhpcyAxMCB5ZWFyIG9sZCBjb21wdXRlciB3YXMgZXhjZWxsZW50LiBJIGFjdHVhbGx5
IGRpZCBhbGwgb2YgdGhlIGNvbmZpZ3VyYXRpb24sIHR3ZWFraW5nIGFuZCB1c2VyIHRlc3Rpbmcg
b24gdGhlIFgyMjAuIE9uY2UgdGhlIHNldHVwIHdhcyByZWFkeSB0byB0dXJuIG92ZXIgdG8gdGhl
IHVzZXIsIEkgbWFkZSBhbiBpbWFnZSBvZiB0aGUgU1NEIGFuZCB0aGVuIGp1c3Qgc3dhcHBlZCB0
aGUgU1NEIGludG8gdGhlIGNvbXB1dGVyIGZvciB0aGUgdXNlci4gSGVyIGNvbXB1dGVyIGlzIGFs
c28gYSBMZW5vdm8uIE1pbnQgYm9vdGVkIG9uIGhlciBjb21wdXRlciBhbmQgc2hlIHdhcyBvZmYg
YW5kIHJ1bm5pbmcuIEkgYW0gaW1wcmVzc2VkIHRoYXQgSSB3YXMgYWJsZSB0byBjb21wbGV0ZSB0
aGUgc2V0dXAgb2YgdGhlIGNvbXB1dGVyIHdpdGggcmVsYXRpdmVseSBmZXcgcm9hZGJsb2Nrcy4g
SSBhbSBhbHNvIGltcHJlc3NlZCB3aXRoIHRoZSBwZXJmb3JtYW5jZSBhbmQgc3RhYmlsaXR5IG9m
IExpbnV4IE1pbnQgTWF0ZS4gVGhlIG5leHQgc3lzdGVtIHRoYXQgSSB3aWxsIGJlIGNvbmZpZ3Vy
aW5nIGlzIHNvbWV3aGF0IG1vcmUgZGVtYW5kaW5nLCBidXQgSSBhbSBjb25maWRlbnQgdGhhdCBJ
IHdpbGwgZ2V0IHRocm91Z2ggaXQuIEFzIHdpdGggdGhlIGZpcnN0IHN5c3RlbSwgSSB3aWxsIGJl
IGRvaW5nIGFsbCBvZiB0aGUgdGVzdGluZyBhbmQgY29uZmlndXJhdGlvbiBvbiBteSB0cnVzdHkg
b2xkIFgyMjAgd2l0aCBhIGZyZXNoIFNhbXN1bmcgRVZPIFNTRC4KPj4gU28sIGlmIHlvdSBkbyBu
b3QgaGF2ZSBhIG9sZCBQQyBnYXRoZXJpbmcgZHVzdCBpbiBhIGNsb3NldCwgeW91IGNhbiBjcmVh
dGUgYSBib290YWJsZSBVU0IgY29udGFpbmluZyBMaW51eCBNaW50IE1hdGUgYW5kIHRoZW4gYm9v
dCBmcm9tIHRoZSBVU0Igc3RpY2sgb24geW91ciBleGlzdGluZyBXaW5kb3dzIGNvbXB1dGVyLiBX
aGVuIHlvdSBhcmUgZG9uZSBwbGF5aW5nIHdpdGggTGludXgsIGp1c3QgcmVtb3ZlIHRoZSBVU0Ig
c3RpY2sgYW5kIHJlYm9vdCBiYWNrIGludG8gV2luZG93cy4gSSBiZWxpZXZlIHRoYXQgaW4gdGhl
IE1pbnQgaW5zdGFsbCBwcm9ncmFtLCB3aGljaCBpcyBmdWxseSBzY3JlZW4gcmVhZGVyIGFjY2Vz
c2libGUsIHRoZXJlIG1pZ2h0IGJlIGFuIG9wdGlvbiB3aGVyZSB5b3UgY2FuIGluc3RhbGwgTGlu
dXggTWludCBhbG9uZ3NpZGUgeW91ciBleGlzdGluZyBXaW5kb3dzIGluc3RhbGwuIFRoZW4gYXQg
Ym9vdCB0aW1lLCB5b3UgY2FuIGNob29zZSB3aGljaCBzeXN0ZW0gdG8gYm9vdCBpbiB0by4gSSBk
aWQgbm90IGRvIHRoaXMsIHNvIEkgY2FuIG5vdCBjb21tZW50IG9uIGhvdyB3ZWxsIHRoaXMgd29y
a3MuCj4+Cj4+IE9uZSBtb3JlIHRoaW5nLi4uV2hlbiB5b3UgYm9vdCBpbnRvIHRoZSBVU0Igc3Rp
Y2ssIHlvdSB3aWxsIGhhdmUgdG8gcHJlc3MgY29udHJvbCtBbHQrU3VwZXIgKHRoaXMgaXMgd2hh
dCBsaW51eCBjYWxscyB0aGUgV2luZG93cyBrZXkpIGluIG9yZGVyIHRvIHN0YXJ0IHRoZSBPcmNh
IHNjcmVlbiByZWFkZXIuIFRoZSAiT3JjYSIga2V5IGlzIHRoZSBpbnNlcnQga2V5LCBqdXN0IGxp
a2UgSmF3cyBvciBOVkRBLiBEbyBhIHdlYiBzZWFyY2ggZm9yICJvcmNhIHNjcmVlbiByZWFkZXIi
IGFuZCB5b3Ugd2lsbCBmaW5kIHBsZW50eSBvZiBpbmZvcm1hdGlvbiB0byBoZWxwIGdldCB5b3Ug
dXAgdG8gc3BlZWQgd2l0aCB0aGlzIHNjcmVlbiByZWFkZXIuIEkgYW0gaGF2aW5nIG5vIHByb2Js
ZW0ganVtcGluZyBiZXR3ZWVuIGl0IGFuZCBKYXdzL05WREEuCj4+Cj4+IFRoaXMgZXhwZXJpZW5j
ZSBoYXMgYmVlbiBlbmpveWFibGUgZm9yIG1lIGFuZCBJIGhvcGUgdGhhdCBpdCB3aWxsIGJlIGZv
ciB5b3UgYWxzby4gRG8gbm90IGhlc2l0YXRlIHRvIHJlYWNoIG91dCBhcyBvdGhlciBxdWVzdGlv
bnMgYXJpc2UuIEkgY2FuIHRlbGwgeW91IHRoYXQgZHVyaW5nIHRoZSBwYXN0IG1vbnRoLCBJIGhh
dmUgc3BlbnQgbWFueSBob3VycyBzZWFyY2hpbmcgdGhlIHdlYiBmb3IgYW5zd2VycyB0byB0aGUg
bWFueSwgbWFueSBxdWVzdGlvbnMgdGhhdCBjYW1lIHVwIGZvciBtZS4gQW5kIHRoZXJlIGlzIGp1
c3Qgc28gbXVjaCBpbmZvIGluIHRoZSB3ZWIgcmVsYXRlZCB0byB1c2luZyBMaW51eC4KPj4KPj4g
QmVzdCwKPj4gSm9obgo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

