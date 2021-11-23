Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4DF45AB81
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 19:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637693327;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T8vM0ZQuQkoQ4PQg7r3+Py2tOgZilA8D48kqZuSXQrw=;
	b=UtoUFDGyOB3k1R3BkSlGawhjJ1RRgjIVXuj5YLVszW9FGNeKsoRatv/j2bz9Jaacs2hbpF
	u10pbKnGQNuaBd7cMN3wS4c6TTiMB1CIwUNVEJX+QElPSLuOKzSMe1aWlAD0Q0e8PoTzGK
	Qgr/MJiBB2OvK9FKxrLaigx5xShS86o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-x9nc9nilPACNN9eIoZRcXQ-1; Tue, 23 Nov 2021 13:48:43 -0500
X-MC-Unique: x9nc9nilPACNN9eIoZRcXQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 95EE8102C889;
	Tue, 23 Nov 2021 18:48:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 743AF60843;
	Tue, 23 Nov 2021 18:48:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07CB84A703;
	Tue, 23 Nov 2021 18:48:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANIkdod000702 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 13:46:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 512D04047279; Tue, 23 Nov 2021 18:46:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CD0B4047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:46:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32D3683718A
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 18:46:39 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-51-Dqc2rP1YM7azdUajNXIbuw-1; Tue, 23 Nov 2021 13:46:37 -0500
X-MC-Unique: Dqc2rP1YM7azdUajNXIbuw-1
Received: by mail-qt1-f172.google.com with SMTP id 8so209144qtx.5
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 10:46:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=fR3sBFDbHOBPsXRvJTVApe+HKY7uGPbq0Bqu095JVsQ=;
	b=xTM+24BoYnpF1ABdmC+1dqkWM9SSdosxmZHkSSIVIgs/673en52a+A9kSgUYyHV1/n
	SiaNWqjAGqhADWJ+JDSZbZn3dNd9KzuetCBJAwB4JeZ1Ceru0AukSD8nra5mVdgYPcBY
	DpbeTM1fV3OfAAOIOxlS2sWU72nzdLw7soFKvqgml+/T5s9FSNjeY5zxIWJyk4xCWHch
	hx4kDhprr7Xhcz+SlD3q8dVBmcKaEFzfaRQ5oE8+QwxCarE2q/jfPW0mclX4cagGOlU3
	U4XyWFyw35XFeHhNvvu1KmYNiHTvHRH3eCIpKqk67JNDg+F8ch7hqtD2VT4UMJAM56tp
	4SAw==
X-Gm-Message-State: AOAM531bLv01C2/n1QycOmcHzzgICyhc3d5vOdApld3okcxoQHMDj1GM
	A+xUOwXbu6TfIBwhWSr3Bp+23fIqDoObsZC0
X-Google-Smtp-Source: ABdhPJxnr8pH9YrN+JJA+8Gr75CzXG298lsjB+P2UpSosB5wlS3CUOd4JZ+6ty44lqYXTVu1g0l3DA==
X-Received: by 2002:a05:622a:11d4:: with SMTP id
	n20mr8812725qtk.412.1637693196862; 
	Tue, 23 Nov 2021 10:46:36 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	s10sm6315191qke.132.2021.11.23.10.46.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 10:46:36 -0800 (PST)
Subject: Re: looking for two gui accessible applications ClipGrab
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2eddfb0e-a139-be53-97a8-2e2468ee9d4a@gmail.com>
	<ee33bad3-902b-2d23-0dd4-81feee9b7308@icloud.com>
	<8309b0ad-c705-e8bc-7141-bfe85a667189@icloud.com>
	<de101cdb-81a9-ab6e-4a77-446442ef3d04@gmail.com>
	<765861f8-cdf9-9839-66e5-55ab3b870e03@slint.fr>
Message-ID: <6e29047b-b9ad-50b4-dab1-ce07c1deef04@gmail.com>
Date: Tue, 23 Nov 2021 13:46:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <765861f8-cdf9-9839-66e5-55ab3b870e03@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCkkgd2lsbCB3YWl0IGZvciB0b21vcnJvdyB1bnRpbCB5b3UgdXBkYXRl
IHdpdGggdGhlIG1vcmUgYWR2YW5jZWQgCnZlcnNpb24uIFRoZSBwcm9ibGVtIGlzIHRoYXQgSSBh
bSBub3QgY29tZm9ydGFibGUgd2l0aCBjb21tYW5kIGxpbmUgCmFwcGxpY2F0aW9ucy4gVGhhdCBp
cyB3aHkgSSB3YXMgaG9waW5nIHRvIGZpbmQgYSBHVUkgYXBwLgoKQ2hlZXJzLAoKSWJyYWhpbQoK
T24gMTEvMjMvMjEgMTo0NCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIaSBJYnJhaGltLAo+Cj4gaW5zdGFsbGluZyBzbmFwIHBhY2thZ2VzIG5lZWRzIHRo
ZSBzb2Z0d2FyZSBzbmFwZCB0aGF0IEkgZG9uJ3QgYW5kIAo+IHdvbid0IHNoaXAKPiBpbiBTbGlu
dCwgc29ycnkuCj4KPiBPbiB0aGUgdGhlIG90aGVyIGhhbmQgSSBoYXZlIGZhaWxlZCB0byBidWls
ZCBDbGlwR3JhYiBmcm9tIHNvdXJjZSBvbiAKPiBTbGludAo+IGJlY2F1c2Ugb3VyIGNvbXBpbGVy
IHN1aXRlIGlzIHRvbyBvbGQuCj4KPiBPbiBhIHBvc2l0aXZlIG5vdGUgU2xhY2t3YXJlLTE1UkMy
IGlzIG91dCwgc28gaG9wZWZ1bGx5IFNsYWNrd2FyZSAxNSAKPiB3aWxsIGJlCj4gcmVsZWFzZWQg
aW4gYSBhIG5vLXNvLWRpc3RhbnQgZnV0dXJlIChub3Qtc28tZGlzdGFudD1hIGZldyBtb250aHMp
LiAKPiBUaGVuIEkgd2lsbAo+IHJlYmFzZSBTbGludCBvbiBTbGFja3dhcmUgMTUgYW5kIHRoZXJl
IHdpbGwgYmUgbm8gaXNzdWUgYnVpbGRpbmcgCj4gQ2xpcEdyYWIgYXMKPiBhbnkgb3RoZXIgcmVj
ZW50IHNvZnR3YXJlIHZlcnNpb24uCj4KPiBNZWFud2hpbGUgYXMgSSB3cm90ZSB5b3UgY2FuIHVz
ZSB5b3V0dWJlLWRsIG9uIHRoZSBjb21tYW5kIGxpbmUuCj4KPiBJIGFsc28gcGxhbiB0byBwcm92
aWRlIGl0cyBzdWNjZXNzb3IgeXQtZGwgbm8gbGF0ZXIgdGhhdCB0b21vcnJvdywgCj4gYW1vbmcg
YQo+IGJhdGNoIHRoYXQgd2lsbCBhbHNvIHVwZ3JhZGUgZmZtcGVnLCB2bGMsIG1wdiwgdXBncmFk
aW5nIGFzc29jaWF0ZWQgCj4gY29kZWNzIGFuZAo+IGFkZGluZyBhIGZldyBvbmVzLgo+Cj4gQ2hl
ZXJzLAo+IERpZGllcgo+Cj4gTGUgMjMvMTEvMjAyMSDDoCAxNzozMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiB0aGFua3MgYSBtaWxsaW9uIGZvciBz
dWdnZXN0aW5nIHRoaXMgYXBwbGljYXRpb24uIEZyb20gdGhlIAo+PiBkZXNjcmlwdGlvbiwgdGhp
cyBhcHBsaWNhdGlvbiBzb3VuZHMgc2ltaWxhciB0byBQb250ZSdzIE1lZGlhIAo+PiBkb3dubG9h
ZGVyLgo+Pgo+PiBVbmZvcnR1bmF0ZWx5LCBJIGNvdWxkIG5vdCBydW4gdGhpcyBleGVjdXRhYmxl
IGltYWdlIG9uIG15IHNsaW50IAo+PiBkZXNrdG9wLiBFdmVyeXRpbWUgSSB0cnkgdG8gb3BlbiBp
dCwgSSBnZXQgYSBtZXNzYWdlIHRoYXQgc2F5cyB0aGVyZSAKPj4gaXMgbm8gYXBwbGljYXRpb24g
aW5zdGFsbGVkIHRvIG9wZW4gZXhlY3V0YWJsZSBmaWxlcywgb3Igc3VjaCB0aGluZy4gCj4+IEl0
IGdpdmVzIG1lIHRoZSBvcHRpb24gdG8gc2VhcmNoIGZvciBvbmUgd2l0aCB5ZXMgb3Igbm8sIGJ1
dCB0aGUgCj4+IGRlZmF1bHQgY2hvaWNlIGlzIG5vLgo+Pgo+PiBTaW5jZSBJIGFtIGEgYmVnaW5u
ZXIsIEkgZG8gbm90IHVuZGVyc3RhbmQgdGhpcyBtZXNzYWdlLiBJIGhpdCBlbnRlciAKPj4gb24g
eWVzLCBidXQgbm90aGluZyBoYXBwZW5lZC4KPj4KPj4gSG9vcGVmdWxseSBzb21lb25lIHdobyBo
YXMgZXhwZXJpZW5jZSB3aXRoIG9wZW5pbmcgc3VjaCBmaWxlcyB3b3VsZCAKPj4gaGVscCBtZSBm
aWd1cmUgaXQgb3V0Lgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPj4KPj4gT24gMTEvMjIv
MjEgMTo0NSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
IEkgdXNlIENsaXBHcmFiIG9uIG15IE1hYyBhbmQgV2luZG93cy4KPj4+Cj4+PiBTbyBJIGNoZWNr
ZWQgYW5kIGl0IGlzIG9uIExpbnV4IGFzIHdlbGwuCj4+Pgo+Pj4gd3d3LmNsaXBncmFiLm9yZwo+
Pj4KPj4+IEl0cyBhIGFwcCBpbWFnZSwgbm8gaW5zdGFsbGF0aW9uIG5lZWRlZC4KPj4+Cj4+Pgo+
Pj4gVXNlIHRoZSBmbGF0IHJldmlldyB0byBjbGljayB0aGUgZG93bmxvYWQgdGFiLgo+Pj4KPj4+
IHBhc3RlIHRoZSB5b3V0dWJlIGxpbmsgaW4gdGhlIGVkaXQgZmllbGQuCj4+Pgo+Pj4gdGFiIHRv
IHRoZSBjb21ibyBib3ggdG8gY2hvb3NlIG9yaWdvbmFsLCBvciBtcDMgYXVkaW8gLgo+Pj4KPj4+
IHByZXNzaW5nIHRoZSBkb3duIGFycm93IGluIHRoaXMgY29tYm8gYm94IGhhZCBubyBzcGVlY2gs
IHNvIGFmdGVyIAo+Pj4gcHJlc3NpbmcgZG93biBhcnJvdywgcHJlc3MgdGFiLCB0aGVuIHNoaWZ0
IHRhYiB0byBoYXZlIHRoZSBzZWxlY3Rpb24gCj4+PiBzcG9rZW4uCj4+Pgo+Pj4gRG8gdGhlIHNh
bWUgZm9yIHRoZSBxdWFsaXR5IGNvbWJvIGJveC4KPj4+Cj4+PiB0aGVuIHRhYiB0byB0aGUgZ3Jh
YiB0aGlzIGNsaXAgYnV0dG9uIGFuZCBwcmVzcyB0aGUgc3BhY2UgYmFyLgo+Pj4KPj4+Cj4+PiBJ
IGhvcGUgdGhpcyBoZWxwcy4KPj4+Cj4+PiBUaGFua3MsCj4+Pgo+Pj4gUm9iCj4+Pgo+Pj4gT24g
MTEvMjIvMjEgMTE6NTkgQU0sIFJvYmVydCBDb2xlIHdyb3RlOgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4g
SSBkb250IGtub3cgb2YgYW55IGd1aSBwcm9ncmFtcywKPj4+Pgo+Pj4+IGJ1dCB5b3UgY2FuIHRy
eQo+Pj4+Cj4+Pj4gd3d3Lm1wMy1ub3cuY29tCj4+Pj4KPj4+Pgo+Pj4+IFRoYW5rcywKPj4+Pgo+
Pj4+IFJvYgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMS8yMi8yMSAxMDo1MCBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSGVsbG8gZnJpZW5kcywKPj4+Pj4K
Pj4+Pj4gSSBhbSB3b25kZXJpbmcgaWYgdGhlcmUgYXJlIGdvb2QgYXBwbGljYXRpb25zIGZvciBk
b3dubG9hZGluZyBmcm9tIAo+Pj4+PiB5b3V0dWJlIHRoYXQgd29ya3Mgd2VsbCB3aXRoIGxpbnV4
ISBJIGFtIGxvb2tpbmcgZm9yIHNvbWV0aGluZyAKPj4+Pj4gc2ltaWxhciB0byBQb250ZSdzIG1l
ZGlhIGRvd25sb2FkZXIgd2hpY2ggd29ya3Mgd2VsbCB3aXRoIHdpbmRvd3MgCj4+Pj4+IHNjcmVl
biByZWFkZXJzLiBJcyB0aGVyZSBzdWNoIGFuIGFwcD8KPj4+Pj4KPj4+Pj4gVGhlIHNlY29uZCBh
cHBsaWNhdGlvbiBJIGFtIGhvcGluZyB0byBmaW5kIGlzIGEgZ29vZCB3ZWF0aGVyIGFwcC4gCj4+
Pj4+IEkgdHJpZWQgdG8gdGhlIHdlYXRoZXIgb24gdGhlIHRlcm1pbmFsIGFuZCBkaWQgbm90IGxp
a2UgaXQgYXQgYWxsLiAKPj4+Pj4gU28sIEkgYW0gaG9waW5nIHRvIGZpbmQgYSBiZXR0ZXIgYWx0
ZXJuYXRpdmUgdGhhdCB3b3JrcyBvbiB0aGUgZ3VpLgo+Pj4+Pgo+Pj4+PiBDaGVlcnMsCj4+Pj4+
Cj4+Pj4+IElicmFoaW0KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

