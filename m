Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6554766BB
	for <lists+blinux-list@lfdr.de>; Thu, 16 Dec 2021 00:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639612221;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XOWOBteMY0AGsvWHdXQh2NApR/KMM4lbyXph81+x7sU=;
	b=FrWC27k/XLVvJisYs58f2Qrn+HYd3t0fg049DKXyJOYJGXcDBTfDGiiuznY/Cbfuqw06+T
	9e3Pf5VZ2j09h0CU7ZX5Gl0fW+G/sZjxOIzmPFNAbS+JzuPB9L43uKsp/2lRpVOa+aaNd4
	LZtFrds3+odMY6hyI/6FkoPRCg+xZqY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-269-d2frmihiPfSJboMnAOf8Nw-1; Wed, 15 Dec 2021 18:50:17 -0500
X-MC-Unique: d2frmihiPfSJboMnAOf8Nw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A92A2F25;
	Wed, 15 Dec 2021 23:50:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA4497B9C6;
	Wed, 15 Dec 2021 23:50:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DDF191809C88;
	Wed, 15 Dec 2021 23:50:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BFNnrM9019417 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Dec 2021 18:49:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6FBA64035780; Wed, 15 Dec 2021 23:49:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BCDB40218D2
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 23:49:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 50BA93C02B78
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 23:49:53 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-448-R5TOWdedO8u3hAIOTkyX0A-1; Wed, 15 Dec 2021 18:49:51 -0500
X-MC-Unique: R5TOWdedO8u3hAIOTkyX0A-1
Received: by mail-wr1-f50.google.com with SMTP id t26so4614872wrb.4
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 15:49:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ITQy0SjjchMUL/wO/HtlLxapUgqlyT37TRdlP/KYhps=;
	b=VYKzn8q3GBKrOOCgydx6CEzHBh5vpoD5V8wC/qt+ZVsQ7+xes/rEAJskqtih02+vc2
	1qMCE69B3ipcP3DLBhxCc7zstMGiK8biXWz+hLbCZujuseVHU2X4fXUSbH11uglPHzJ1
	vWybPaVnH9mfd432Z+EiDD4VvPLfpMoMC5R876AfoQn0qLHqAhip8iW6+OmqgL015kEQ
	fmQP9kZcrFj9VVu9hGKJ+/9ZFde2L7nbQlUEFmG/CVdJU5zzTthPh+lP2PSYekri6Q2F
	cF88ShJY38FR5VVlfHmYBAvV2L+l/mdb7w52B1ItxY423Qclan2tHirHNCc/4otWZs2t
	2l6g==
X-Gm-Message-State: AOAM530SP0TjHY0T/gOzENfD3d53sMBDgtPlDf69SIQ9razuE7/bjNGg
	7Fi2wGQ/+1tGXGW1Lq/kQgY8b9CmQHkCOw==
X-Google-Smtp-Source: ABdhPJwQ0AgqzrQ2Y2LNKfu+H62H+eONwnZeTgMKNAnfX43DA+k5PDGnqPkEqDlVlMrVnBpqWm7WlQ==
X-Received: by 2002:a5d:6d8b:: with SMTP id l11mr6469370wrs.335.1639612190166; 
	Wed, 15 Dec 2021 15:49:50 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	v9sm3419032wrb.107.2021.12.15.15.49.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 15 Dec 2021 15:49:49 -0800 (PST)
Message-ID: <d740e72d-1f17-b550-1847-912efec0202b@gmail.com>
Date: Wed, 15 Dec 2021 23:50:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
	<e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
	<06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
	<c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
In-Reply-To: <c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2hpY2ggZGVza3RvcCBkaWQgeW91IHBpY2s/IEknbSB0ZW1wdGVkIHRvIHdpcGUgbXkgVk0gZGlz
ayBhbmQgdHJ5IGEgCmRlc2t0b3AgYXQgc29tZSBwb2luLCBidXQgbm90IHN1cmUgd2hpY2ggb25l
L2hvdyBtYW55IHdvcmsKCk9uIDEyLzE1LzIxIDIwOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4KPiBXb3JrZWQgbGlrZSBhIGNoYW1wLsKgIFRo
ZSBvbixseSB0aGluZyBJIHdhcyBjb25mdXNlZCBhYm91dCB3YXMgdGhlIAo+IGRpc2sgc2VsZWN0
aW9uLsKgIEFmdGVyIHNlbGVjdGluZyB0aGUgZmRpc2sgeW91IGFyZSBzdGlsbCBhdCBkaXNrIAo+
IHNlbGVjdGlvbiBzdGVwIHdoaWNoIHlvdSBjYW4ganVzdCBwcmVzcyBlbnRlciB0byBjb250aW51
ZSBhcyB0aGUgZGlzayAKPiB5b3UgY2hvc2UgYXQgdGhlIGZpcnN0IHByb21wZWQgaXQgaXMgYWxy
ZWFmZHkgc2VsZWN0ZWQsIGJ1dCB0aGlzIGlzIAo+IG5vdCBzcG9rZW4gYnkgb3JjYSBob3dldmVy
IGp1c3Qga2VlcCB0aGlzIGluIG1pbmQuIEFsc28sIHRoZSBkZXNrdG9wIAo+IHNlbGVjdGlvbiB3
ZW50IGZpbmUuwqAgSSBzZWxlY3RlZCBhbHNhLXV0aWxzLCBlc3BlYWt1cCwgZmlyZWZveCBhbmQg
Cj4gdGh1bmRlcmJpcmQgYW5kIGV2ZXJ5dGhpbmcgZWxzZSB3ZW50IGZpbmUgYXQgbGVhc3QgaW4g
bXkgdm0gd2hpY2ggaXMgCj4gdXNpbmcgVUVGSS4KPgo+Cj4gTWF0dGhldwo+Cj4KPgo+IE9uIDEy
LzE0LzIwMjEgNzowNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4gT25jZSB5b3UgYm9vdCB0aGUgSVNPIHdpdGggc3BlZWNoICh3aGljaCBpcyBkb3duIG9u
Y2Ugb24gdGhlIGJvb3QgCj4+IG1lbnUsIHNvIGp1c3QgZG93biBhbmQgZW50ZXIgdGhlbiB3YWl0
KSwgYW5kIGl0IGxvZ3MgeW91IGluIGFuZCB5b3UgCj4+IGdldCB0aGUgcm9vdEBhcmNoaXNvIHBy
b21wdCBqdXN0IHR5cGUgYXJjaGluc3RhbGwgYW5kIGl0J2xsIGRvIGEgCj4+IGNvbm5lY3Rpb24g
dGVzdCB0aGVuIGNvbWUgdXAgd2l0aCB0aGUgZ3VpZGVkIGluc3RhbGxlci4KPj4KPj4gOTklIG9m
IGl0IGlzIGludHVpdGl2ZS4gSSd2ZSBub3QgZ290IGFyb3VuZCB0byB0ZXN0aW5nIHRoZSBpbnN0
YWxsIAo+PiBvcHRpb24gZm9yIGRlc2t0b3BzLiBJIHBlcnNvbmFsbHkgZ28gd2l0aCBhIGJhc2Ug
aW5zdGFsIGFuZCBjdXN0b21pemUgCj4+IG15IHN5c3RlbSBhcyBuZWVkZWQsIGJ1dCBZTU1WIG9u
IHRoYXQgb25lLiBUaGUgb25seSBiaXQgdGhhdCB0cmlwcGVkIAo+PiBtZSB1cCB3YXMgdGhlIHJl
Z2lvbiBzZWxlY3Rpb24gKHNlY29uZCBzdGVwKSBhbmQgdGhlIGRpc2sgc2VsZWN0aW9uIAo+PiBz
aW5jZSB0aGF0IGNoYW5nZWQgdG8gd2hlcmUgeW91IHNlbGVjdCB5b3VyIGRpc2ssIHRoZW4gZG9u
J3Qgc2VsZWN0IAo+PiBhbnl0aGluZyB0byBjb250aW51ZS4gSXQgd2Fsa3MgeW91IHRocm91Z2gg
dGhlIHN0ZXBzIG9uZSBhdCBhIHRpbWUsIAo+PiBhbmQgaWYgeW91IGtub3cgaG93IHRvIGluc3Rh
bGwgQXJjaCBhY2Nlc3NpYmx5LCB0aGUgZXh0cmEgcGFja2FnZXMgCj4+IHN0ZXAgaXMgdGhlIHNh
bWUgYXMgcGFjc3RyYXAuCj4+Cj4+IEZldyB0aGluZ3MgdG8gbm90ZToKPj4KPj4gMS4gSXQgYXV0
byBlbmFibGVzIGVzcGVha3VwIGlmIGl0J3MgaW5zdGFsbGVkIChJIHVzdWFsbHkgaW5zdGFsbCBp
dCAKPj4gb3V0IG9mIGhhYml0KQo+Pgo+PiAyLiBJJ20gbm90IHN1cmUgb2YgdGhlIGtleXMgdG8g
c2h1dCBlc3BlYWt1cCBvZmYgaG93ZXZlci4uLgo+Pgo+PiBBbmQgdGhlIGJpZywgYmlnIG9uZS4g
VGhlIGxhc3QgSSBjaGVja2VkLCBOb3ZlbWJlci4gSXQgb25seSB3b3JrZCBvbiAKPj4gVUVGSSBt
YWNoaW5lcyAvYnV0LyB0aGF0IG1pZ2h0IGhhdmUgYmVlbiBjaGFuZ2VkLiBJIGhvbmVzdGx5IGRv
bid0IAo+PiBrbm93IGlmIGl0J3Mgd29ya2luZyBvbiBsZWdhY3kgQklPUyBtYWNoaW5lcwo+Pgo+
PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+Pgo+
Pj4KPj4+IElzIHRoaXMgZ3VpZGVkIGluc3RhbGxlciBwYXJ0IG9mIHRoZSBhcmNoIGlzbz/CoCBJ
ZiBzbywgaG93IGRvIHlvdSAKPj4+IGdldCBpdCBnb2luZz8/wqAgSSB3b3VsZCBsaWtlIHRvIGdp
dmUgdGhpcyBhIHRlc3QgYW5kIHNlZSBob3cgdGhpcyAKPj4+IHdvcmtzLgo+Pj4KPj4+Cj4+PiBN
YXR0aGV3Cj4+Pgo+Pj4KPj4+Cj4+PiBPbiAxMi8xNC8yMDIxIDc6NTkgQU0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gZWxsIHRoZXJlJ3MgYSBoaXN0b3J5
IG9mIHBvc3RzIGFzIGZhciBhcyBKZW51eCBicmVha2luZyB3aXRoIHBlb3BsZSAKPj4+PiB3YXkg
bW9yZSBxdWFsaWZpZWQgdGhhbiBtZSBkaWdnaW5nIHRocm91Z2ggdGhlIGNvZGUgYW5kIGhhdmlu
ZyAKPj4+PiB0aGluZ3MgYnJlYWsgb24gdGhlaXIgaW5zdGFsbHMuIEkndmUgcGVyc29uYWxseSBo
YWQgSmVudXggY29ycnVwdCBhIAo+Pj4+IGZsYXNoIGRyaXZlIHRvIHRoZSBwb2ludCBpdCdzIGEg
Z2xvcmlmaWVkIHBhcHJ3ZWlnaHQgZHVlIHRvIAo+Pj4+IHNoZW5hbmlnYW5zIHdpdGggd3JpdGlu
ZyB0byBpdC4KPj4+Pgo+Pj4+IFRoYXQgYmVpbmcgc2FpZC4gTm93IEFyY2ggaXRzZWxmIGhhcyB0
aGUgZ3VpZGVkIG1vZGUgaW5zdGFsbGVyLCAKPj4+PiB3aGljaCBpcyBwZXJmZWN0bHkgdXNlYWJs
ZSB3aXRoIGVzcGVha3VwIGFuZCB0aGF0IG9uY2UgaW5zdGFsbGVkLCAKPj4+PiBhcyBvZiB0aGlz
IG1vbnRoIGF1dG8gZW5hYmxlcyBzcGVlY2gvYnJhaWxsZSBhdCB0aGUgZW5kIG9mIHRoZSAKPj4+
PiBpbnN0YWxsLCBJJ2QgYXJndWUgQXJjaCBhcmUgZG9pbmcgYSBiZXR0ZXIgam9iIGF0IG1ha2lu
ZyB0aGVpciAKPj4+PiBzeXN0ZW1zIGFjY2Vzc2libGUqIHRoYW4gcGVvcGxlIGFzc3VtZSB0aG91
Z2guIEk7ZCBhbHNvIHNheSBva2F5LCAKPj4+PiBBcmNoIGhhcyBhIGd1aWRlZCBpbnN0YWxsZXIg
dGhhdCB3b3JrcyoqIGFuZCBpZiBib290ZWQgd2l0aCAKPj4+PiBhY2Nlc3NpYmlsaXR5IG9uLCBr
ZWVwcyB0aG9zZSBzZXR0aW5ncyBhbmQgZ2l2ZXMgeW91IGEgd29ya2luZyAKPj4+PiAoYmFzZSwg
bWluZCkgc3lzdGVtIG91dCBvZiB0aGUgYm94Lgo+Pj4+Cj4+Pj4KPj4+PiAqIFByb3ZpZGVkIHlv
dSBpbnN0YWxsIGFsc2EtdXRpbHMvZXNwZWFrdXAgYXMgcGVyIGEgbm9ybWFsIAo+Pj4+IGFjY2Vz
c2liaWxpdHkgQXJjaCBpbnN0YWxsLiBUaGVyZSdzIGEgc3RlcCBpbiB0aGUgZ3VpZGVkIGluc3Rh
bGxlciAKPj4+PiB3aGVyZSBpdCBhc2tzIGZvciBleHRyYSBwYWNrYWdlcywgdGhhdCdzIHdoZXJl
IHlvdSBwbHVnIAo+Pj4+IGFsc2EtdXRpbHMvZXNwZWFrdXAgaW4uIGVzcGVha3VwLnNlcnZpY2Ug
Z2V0cyBhdXRvIGVuYWJsZWQgYXQgdGhlIAo+Pj4+IGVuZCBvZiB0aGUgaW5zdGFsbCBhcyBwYXJ0
IG9mIHRoZSBpbnN0YWxsZXIKPj4+Pgo+Pj4+Cj4+Pj4gKiogV29ya3MsIGFzIGxvbmcgYXMgeW91
J3JlIG9rYXkgd2l0aCBhIGJhc2UgaW5zdGFsbCBidXQgZ2V0dGluZyBhIAo+Pj4+IERFIHVwIGFu
ZCBydW5uaW5nIGlzbid0IHRoYXQgYmFkIHJlYWxseSBvbmNlIHlvdSBkaWQgdGhlIGluc3RhbGwu
IAo+Pj4+IEkndmUgbm90IGdvdCB0aGUgZGVza3RvcCBvbmVzIHRvIHdvcmsgY3VycmVudGx5IGJ1
dCBzdGlsbCBwb2tpbmcgYXQgCj4+Pj4gaXQuIEknbSB0ZW1wdGVkIHRvIGFkZCBpbiBvcmNhLXNw
ZWVjaC1kaXNwYXRjaGVyIGFuZCBzbyBmb3J0aCBpbnRvIAo+Pj4+IHRoZSBleHRyYSBwYWNrYWdl
cyBzdGVwLgo+Pj4+Cj4+Pj4KPj4+PiBhdCB0aGF0IGhvd2V2ZXIuCj4+Pj4KPj4+Pgo+Pj4+IE9u
IDEyLzE0LzIxIDEyOjQ2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBkaWQgdXNlIHRoZSBsYXRlc3QgYXMgb2Yg
YWJvdXQgMTUgaG91cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlmeSAKPj4+Pj4gdGhlIGlzby4KPj4+
Pj4KPj4+Pj4KPj4+Pj4gVGhlIGlzc3VlIHRoaXMgdGltZSBpcyB0aGF0IGFmdGVyIHJ1bm5pbmcg
dGhlIGluc3RhbGxlciBhbmQgCj4+Pj4+IHJlYm9vdGluZywgbm90aGluZyBzcG9rZS4gdGhlIHNl
ZWluZ0FJIG9uIHRoZSBpcGhvbmUgY291bGQgcmVhZCAKPj4+Pj4gdGhlIHNjcmVlbiBqdXN0IGZp
bmUsIGJ1dCBJIGNvdWxkbid0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IExhc3QgdGltZSBpdCB3YXMgb3Jj
YSBpbiBNYXRlIHRoYXQgZGlkbid0IHdhbnQgdG8gY29tZSBvbiwgbm8gCj4+Pj4+IG1hdHRlciB3
aGF0IEkgZG8uCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEkgZm91bmQgdGhhdCB3aXRoIEplbnV4LCBuZXZl
ciBleHBlY3QgdGhlIHNhbWUgdGhpbmcgdG8gZ28gd3JvbmcgCj4+Pj4+IHR3aWNlLCBob3dldmVy
IHNvbWV0aGluZyB3aWxsIGJyZWFrLgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+
Pj4+Cj4+Pj4+Cj4+Pj4+IEJyYW5kdAo+Pj4+Pgo+Pj4+PiBPbiAyMDIxLzEyLzE0IDE0OjMxLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4gSmVudXggZ2V0
cyByZWd1bGFyIHVwZGF0ZXMgbGF0ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRoYXQgCj4+Pj4+
PiBjaGFuZ2VkIHRvZGF5Lgo+Pj4+Pj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/
wqAgSWYgSSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIAo+Pj4+Pj4gZm9yIGFuCj4+Pj4+PiBp
c28sIEkgd29uJ3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdp
dGggdGhlIAo+Pj4+Pj4gLnNoYTUxMgo+Pj4+Pj4gZmlsZS7CoCBTbyB0d28gcG90ZW50aWFsIHBy
b2JsZW1zIG5vdCB1c2luZyBjdXJyZW50IEplbnV4IGluc3RhbGwgCj4+Pj4+PiBpc28gb3IKPj4+
Pj4+IGZhaWxlZCB0byB2ZXJpZnkgaXNvLsKgIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBw
cm9ibGVtcywgCj4+Pj4+PiBwbGVhc2Ugd3JpdGUKPj4+Pj4+IGRubC5uYXNoQGdtYWlsLmNvbSBh
bmQgbGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCAKPj4+Pj4+IG9uIHlv
dXIKPj4+Pj4+IGluc3RhbGwgZmFpbC7CoCBUaGF0IG9uZSBpcyB0aGUgZGV2ZWxvcGVyLgo+Pj4+
Pj4KPj4+Pj4+Cj4+Pj4+PiBPbiBUdWUsIDE0IERlYyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+PiBIaSwKPj4+Pj4+Pgo+Pj4+Pj4+
Cj4+Pj4+Pj4gSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQg
YSBza2lwIGZvciBub3csIAo+Pj4+Pj4+IHRoYXQgaXMgdW5sZXNzCj4+Pj4+Pj4gdGhlIGRldiBh
Y3R1YWxseSBmaXhlcyB0aGUgdGhpbmcuCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgYW0gb24g
RmVkb3JhLCBmb3Igbm93LCBiZWNhdXNlIGl0IHdhcyB0aGUgbmVhcmVzdCBVc2Igc3RpY2sgSSAK
Pj4+Pj4+PiBjb3VsZCBncmFiCj4+Pj4+Pj4gcXVpY2tseS4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+
Pj4gSSBtaWdodCBqdXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5vdGhlciBnby4gV2h5
IG5vdD8KPj4+Pj4+Pgo+Pj4+Pj4+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+IMKgwqBvciBNYW5qYXJvIEFyY2hp
dGVjdC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRo
IHRoZSB2YW5pbGxhIEFyY2ggSVNPIGFuZCB0aGUgCj4+Pj4+Pj4+IGd1aWRlZAo+Pj4+Pj4+PiBp
bnN0YWxsZXIgKHRoZSBhcmNoaW5zdGFsbCBvbmUpLCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAg
Cj4+Pj4+Pj4+IHRhbGtpbmcsIHdlbnQKPj4+Pj4+Pj4gdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4g
YWxzYS11dGlscy9lc3BlYWt1cCBhbmQgdGhlbiBwdXQKPj4+Pj4+Pj4gc3BlZWNoLWRpc3BhdGNo
ZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1hbmFnZXIgb24gb25jZSB0aGUgCj4+Pj4+Pj4+
IHN5c3RlbSB3YXMKPj4+Pj4+Pj4gaW5zdGFsbGVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBKZW51eCBoYXMgbmV2ZXIgcmVhbGx5IHdvcmtlZCBmb3IgbWUgb24gYSBWTSBvciBiYXJlIG1l
dGFsIGF0IAo+Pj4+Pj4+PiBhbGwsIHdoZXJlYXMKPj4+Pj4+Pj4gdGhlIG9mZmljaWFsIGFyY2gg
SVNPIGlzIHdvcmtpbmcgcmF0aGVyIHdlbGwsIGFuZCBJIGR1bm5vIGlmIAo+Pj4+Pj4+PiB0aGUg
QXJjaGl0ZWN0Cj4+Pj4+Pj4+IGVkaXRpb24gaXMgMzYvNjQgYml0IG9yIDMyYml0IG9ubHkgb3Ig
NjRiaXQgb25seS4gQWRtaXR0ZWRseSwgCj4+Pj4+Pj4+IEkndmUgZ290IGEKPj4+Pj4+Pj4gNjRi
aXQgVUVGSSBzeXN0ZW0gc28gdGhlIG9mZmljaWFsIElTbyB3b3JrcyBmbGF3bGVzc2x5IG9uIGl0
IAo+Pj4+Pj4+PiBob3dldmVyLCBidXQKPj4+Pj4+Pj4gWU1NViBvbiB0aGF0IG9uZVllcywgYnV0
IHlvdSBwcm9iYWJseSBkb24ndCB3YW50IHRvIGhlYXIgaXQgaWYgCj4+Pj4+Pj4+IHlvdSBhcmUg
c2V0Cj4+Pj4+Pj4+IG9uIHVzaW5nIEplbnV4IGhvd2V2ZXIuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9u
IDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4+Pj4+Pj4gSGkgYWxsLAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEkgZGVjaWRlZCB0byBnaXZl
IEplbnV4IGFub3RoZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQgCj4+Pj4+Pj4+PiBJ
IHRyaWVkLCBJCj4+Pj4+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21lIG9uIGFmdGVyIGxv
Z2dpbmcgaW4gdG8gdGhlIHN5c3RlbS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBEb2VzIGFueW9uZSBo
YXZlIGFueSBhZHZpY2U/Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQWxzbywgaWYgdGhpcyBkb2Vzbid0
IHdvcmsgb3V0LCBpcyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIAo+Pj4+Pj4+Pj4gTWFuamFy
bwo+Pj4+Pj4+Pj4gYXJjaGl0ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRh
dGVkIGEgbGl0dGxlIAo+Pj4+Pj4+Pj4gd2hpbGUgYWdvLCBhbmQKPj4+Pj4+Pj4+IGlmLCBhcyBJ
IHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhhdCAKPj4+
Pj4+Pj4+IG9uZSBhIGdvLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFRoYW5rcyBzbyBsb25nLgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBCcmFuZHQg
U3RlZW5rYW1wCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQ29udGFjdDoKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBQaG9uZTogKzI3
ICgwKTYwIDUyNSA5MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
RW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIAo+Pj4+Pj4+Pj4gPG1haWx0bzpicmFu
ZHQuc3RlZW5rYW1wQGdtYWlsLmNvbT4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUd2l0dGVyOiBAYnJh
bmR0c3RlZW5rYW1wIAo+Pj4+Pj4+Pj4gPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3Rl
ZW5rYW1wPgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+Pj4KPj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

