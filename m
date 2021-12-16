Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DAE477290
	for <lists+blinux-list@lfdr.de>; Thu, 16 Dec 2021 14:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639659840;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hKbOtx2QTCHJXdSOoKxWJzCCQv3y9vuwppzSVLMQ9FU=;
	b=Dj7QeMUs8m7Dr4D4GBSESC3xovqPEG2160syFFQYtCcAqsoYmTBD9nUHgbBK2kfV5Bqkur
	Yik6hbGPz8B0gsxAiGwlsrLZtfrBDsMGrFDrdHComLKGrEEWXaOJ3Xa54L/JmNLxMNXq8h
	JL/dBluPF1qxOAiWWTTzZiCHm+oOHhk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-k9-X33WZPoW-iSNZCZxyXA-1; Thu, 16 Dec 2021 08:03:56 -0500
X-MC-Unique: k9-X33WZPoW-iSNZCZxyXA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C30438015CD;
	Thu, 16 Dec 2021 13:03:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEF8B5E26B;
	Thu, 16 Dec 2021 13:03:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C16EC4BB7B;
	Thu, 16 Dec 2021 13:03:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BGD3P2T022051 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Dec 2021 08:03:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6BA4540CFD23; Thu, 16 Dec 2021 13:03:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 668B540CFD0B
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 13:03:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48FC33C9A01E
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 13:03:25 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-586-BkVwjRhzMu-0TflT1mLrkA-1; Thu, 16 Dec 2021 08:03:23 -0500
X-MC-Unique: BkVwjRhzMu-0TflT1mLrkA-1
Received: by mail-wr1-f42.google.com with SMTP id s1so9954443wrg.1
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 05:03:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=8l9eZrMI5YABqq7EqOXiuuyPHxsrpXQLdcHquYbdipk=;
	b=lgtCkXinHpJpkvi7W16gn0zfLtWR5PLbJBmIxHzzyLS/VCjBYQH5UfVhEcF2IeKkdP
	264ImiuIIYb5qc0GRm7F3ZaMRuSa4HTOof5GPP9N+Jn9eLgPdpOryi/3YmC99Odc5onP
	6r7r0z6T9VtP6SkSa6LUUpbAYG3JCe9ApussctzRwp7eZpbphifMMaTpVZC6QUq1qF27
	57+MU8Qib/izazlHbrOR7REQwOCveBLjPCe20I5FcHTW+mPR+I1TcPDHBQfYXgQ2Ezu9
	LE2ALWGYtnEBuiPqzOqOEA3r4aHLbN4AiH6rDO7E9F+VRMW7xgZ8FrFaUEMleXJXPzRP
	ioIg==
X-Gm-Message-State: AOAM533yuWJ/UruAxTqhXlAUpStFqjc8N1FKyKQu24i3a9Rv6qnlGI37
	Wmz3RkiUsYdNgAqLGS3waJErziWGPwFnGw==
X-Google-Smtp-Source: ABdhPJxnTw2rD7kKBUxJ6FifM4VX34RhOVAhzupLWqdD+KEFKYiwlNy99X0vPFjzb6lX80vOUxpmNQ==
X-Received: by 2002:a5d:64a2:: with SMTP id m2mr9022829wrp.248.1639659802197; 
	Thu, 16 Dec 2021 05:03:22 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	f19sm9052093wmq.34.2021.12.16.05.03.21 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Dec 2021 05:03:21 -0800 (PST)
Message-ID: <68f018b4-1a42-e909-2ae3-fc11a1f29fc2@gmail.com>
Date: Thu, 16 Dec 2021 13:03:31 +0000
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

SnVzdCBhcyBhIGZvbGxvdyB1cCwgSSd2ZSBnb25lIGJhY2sgdGhyb3VnaCB0aGUgZ3VpZGVkIGlu
c3RhbGxlciBhbmQgaXQgCndvcmtzIGZsYXdsZXNzbHkuIEhvd2V2ZXIsIEknbSBub3QgZmluZGlu
ZyB0aGUgZG9jdW1lbnRhdGlvbiB0byB0b2dnbGUgCmVzcGVha3UncyBzcGVlY2ggb3V0cHV0LiBJ
dCdzIG5vdCBhbiBpc3N1ZSB3aGVuIHRoZSBzeXN0ZW0ncyBpbnN0YWxsZWQsIApidXQgaXQgaXMg
dmVyeSwgdmVyeSBjaGF0dHkgd2hlbiBpbnN0YWxsaW5nIHNvIEkgd2FzIGhvcGluZyB0byBiZSBh
YmxlIAp0byB0dXJuIHRoZSBzcGVlY2ggb2ZmIGZvciBhIGZldyBtb21lbnRzLiBPdGhlciB0aGFu
IHRoYXQsIHRoZSAKaW5zdGFsbGVyJ3MgZ2V0dGluZyB0d2Vha3MgYW5kIHVwZGF0ZXMsIE5vdmVt
YmVyJ3MgZGlkbid0IGdpdmUgeW91IHRoZSAKY2hvaWNlIGJldHdlZW4gUGlwZXdpcmUvUHVsc2Vh
dWRpbyAob3IgbnVsbCBpZiB5b3UgYXJlIGRvaW5nIGEgYmFzZSAKaW5zdGFsbCkgb3IgdGhlIHN3
YXAgb3B0aW9uLiBJJ20ga2VlbiB0byBzZWUgd2hlcmUgdGhlIGd1aWRlZCBpbnN0YWxsZXIgCmdv
ZXMsIGl0IG1ha2VzIGdldHRpbmcgYW4gQXJjaCBzeXN0ZW0gdXAgYW5kIGdvaW5nIGVhc2llciBu
b3cKCk9uIDEyLzE1LzIxIDIwOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IHdyb3RlOgo+IEhpLAo+Cj4KPiBXb3JrZWQgbGlrZSBhIGNoYW1wLsKgIFRoZSBvbixseSB0aGlu
ZyBJIHdhcyBjb25mdXNlZCBhYm91dCB3YXMgdGhlIAo+IGRpc2sgc2VsZWN0aW9uLsKgIEFmdGVy
IHNlbGVjdGluZyB0aGUgZmRpc2sgeW91IGFyZSBzdGlsbCBhdCBkaXNrIAo+IHNlbGVjdGlvbiBz
dGVwIHdoaWNoIHlvdSBjYW4ganVzdCBwcmVzcyBlbnRlciB0byBjb250aW51ZSBhcyB0aGUgZGlz
ayAKPiB5b3UgY2hvc2UgYXQgdGhlIGZpcnN0IHByb21wZWQgaXQgaXMgYWxyZWFmZHkgc2VsZWN0
ZWQsIGJ1dCB0aGlzIGlzIAo+IG5vdCBzcG9rZW4gYnkgb3JjYSBob3dldmVyIGp1c3Qga2VlcCB0
aGlzIGluIG1pbmQuIEFsc28sIHRoZSBkZXNrdG9wIAo+IHNlbGVjdGlvbiB3ZW50IGZpbmUuwqAg
SSBzZWxlY3RlZCBhbHNhLXV0aWxzLCBlc3BlYWt1cCwgZmlyZWZveCBhbmQgCj4gdGh1bmRlcmJp
cmQgYW5kIGV2ZXJ5dGhpbmcgZWxzZSB3ZW50IGZpbmUgYXQgbGVhc3QgaW4gbXkgdm0gd2hpY2gg
aXMgCj4gdXNpbmcgVUVGSS4KPgo+Cj4gTWF0dGhldwo+Cj4KPgo+IE9uIDEyLzE0LzIwMjEgNzow
NiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gT25jZSB5
b3UgYm9vdCB0aGUgSVNPIHdpdGggc3BlZWNoICh3aGljaCBpcyBkb3duIG9uY2Ugb24gdGhlIGJv
b3QgCj4+IG1lbnUsIHNvIGp1c3QgZG93biBhbmQgZW50ZXIgdGhlbiB3YWl0KSwgYW5kIGl0IGxv
Z3MgeW91IGluIGFuZCB5b3UgCj4+IGdldCB0aGUgcm9vdEBhcmNoaXNvIHByb21wdCBqdXN0IHR5
cGUgYXJjaGluc3RhbGwgYW5kIGl0J2xsIGRvIGEgCj4+IGNvbm5lY3Rpb24gdGVzdCB0aGVuIGNv
bWUgdXAgd2l0aCB0aGUgZ3VpZGVkIGluc3RhbGxlci4KPj4KPj4gOTklIG9mIGl0IGlzIGludHVp
dGl2ZS4gSSd2ZSBub3QgZ290IGFyb3VuZCB0byB0ZXN0aW5nIHRoZSBpbnN0YWxsIAo+PiBvcHRp
b24gZm9yIGRlc2t0b3BzLiBJIHBlcnNvbmFsbHkgZ28gd2l0aCBhIGJhc2UgaW5zdGFsIGFuZCBj
dXN0b21pemUgCj4+IG15IHN5c3RlbSBhcyBuZWVkZWQsIGJ1dCBZTU1WIG9uIHRoYXQgb25lLiBU
aGUgb25seSBiaXQgdGhhdCB0cmlwcGVkIAo+PiBtZSB1cCB3YXMgdGhlIHJlZ2lvbiBzZWxlY3Rp
b24gKHNlY29uZCBzdGVwKSBhbmQgdGhlIGRpc2sgc2VsZWN0aW9uIAo+PiBzaW5jZSB0aGF0IGNo
YW5nZWQgdG8gd2hlcmUgeW91IHNlbGVjdCB5b3VyIGRpc2ssIHRoZW4gZG9uJ3Qgc2VsZWN0IAo+
PiBhbnl0aGluZyB0byBjb250aW51ZS4gSXQgd2Fsa3MgeW91IHRocm91Z2ggdGhlIHN0ZXBzIG9u
ZSBhdCBhIHRpbWUsIAo+PiBhbmQgaWYgeW91IGtub3cgaG93IHRvIGluc3RhbGwgQXJjaCBhY2Nl
c3NpYmx5LCB0aGUgZXh0cmEgcGFja2FnZXMgCj4+IHN0ZXAgaXMgdGhlIHNhbWUgYXMgcGFjc3Ry
YXAuCj4+Cj4+IEZldyB0aGluZ3MgdG8gbm90ZToKPj4KPj4gMS4gSXQgYXV0byBlbmFibGVzIGVz
cGVha3VwIGlmIGl0J3MgaW5zdGFsbGVkIChJIHVzdWFsbHkgaW5zdGFsbCBpdCAKPj4gb3V0IG9m
IGhhYml0KQo+Pgo+PiAyLiBJJ20gbm90IHN1cmUgb2YgdGhlIGtleXMgdG8gc2h1dCBlc3BlYWt1
cCBvZmYgaG93ZXZlci4uLgo+Pgo+PiBBbmQgdGhlIGJpZywgYmlnIG9uZS4gVGhlIGxhc3QgSSBj
aGVja2VkLCBOb3ZlbWJlci4gSXQgb25seSB3b3JrZCBvbiAKPj4gVUVGSSBtYWNoaW5lcyAvYnV0
LyB0aGF0IG1pZ2h0IGhhdmUgYmVlbiBjaGFuZ2VkLiBJIGhvbmVzdGx5IGRvbid0IAo+PiBrbm93
IGlmIGl0J3Mgd29ya2luZyBvbiBsZWdhY3kgQklPUyBtYWNoaW5lcwo+Pgo+PiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4KPj4+IElzIHRo
aXMgZ3VpZGVkIGluc3RhbGxlciBwYXJ0IG9mIHRoZSBhcmNoIGlzbz/CoCBJZiBzbywgaG93IGRv
IHlvdSAKPj4+IGdldCBpdCBnb2luZz8/wqAgSSB3b3VsZCBsaWtlIHRvIGdpdmUgdGhpcyBhIHRl
c3QgYW5kIHNlZSBob3cgdGhpcyAKPj4+IHdvcmtzLgo+Pj4KPj4+Cj4+PiBNYXR0aGV3Cj4+Pgo+
Pj4KPj4+Cj4+PiBPbiAxMi8xNC8yMDIxIDc6NTkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gZWxsIHRoZXJlJ3MgYSBoaXN0b3J5IG9mIHBvc3RzIGFz
IGZhciBhcyBKZW51eCBicmVha2luZyB3aXRoIHBlb3BsZSAKPj4+PiB3YXkgbW9yZSBxdWFsaWZp
ZWQgdGhhbiBtZSBkaWdnaW5nIHRocm91Z2ggdGhlIGNvZGUgYW5kIGhhdmluZyAKPj4+PiB0aGlu
Z3MgYnJlYWsgb24gdGhlaXIgaW5zdGFsbHMuIEkndmUgcGVyc29uYWxseSBoYWQgSmVudXggY29y
cnVwdCBhIAo+Pj4+IGZsYXNoIGRyaXZlIHRvIHRoZSBwb2ludCBpdCdzIGEgZ2xvcmlmaWVkIHBh
cHJ3ZWlnaHQgZHVlIHRvIAo+Pj4+IHNoZW5hbmlnYW5zIHdpdGggd3JpdGluZyB0byBpdC4KPj4+
Pgo+Pj4+IFRoYXQgYmVpbmcgc2FpZC4gTm93IEFyY2ggaXRzZWxmIGhhcyB0aGUgZ3VpZGVkIG1v
ZGUgaW5zdGFsbGVyLCAKPj4+PiB3aGljaCBpcyBwZXJmZWN0bHkgdXNlYWJsZSB3aXRoIGVzcGVh
a3VwIGFuZCB0aGF0IG9uY2UgaW5zdGFsbGVkLCAKPj4+PiBhcyBvZiB0aGlzIG1vbnRoIGF1dG8g
ZW5hYmxlcyBzcGVlY2gvYnJhaWxsZSBhdCB0aGUgZW5kIG9mIHRoZSAKPj4+PiBpbnN0YWxsLCBJ
J2QgYXJndWUgQXJjaCBhcmUgZG9pbmcgYSBiZXR0ZXIgam9iIGF0IG1ha2luZyB0aGVpciAKPj4+
PiBzeXN0ZW1zIGFjY2Vzc2libGUqIHRoYW4gcGVvcGxlIGFzc3VtZSB0aG91Z2guIEk7ZCBhbHNv
IHNheSBva2F5LCAKPj4+PiBBcmNoIGhhcyBhIGd1aWRlZCBpbnN0YWxsZXIgdGhhdCB3b3Jrcyoq
IGFuZCBpZiBib290ZWQgd2l0aCAKPj4+PiBhY2Nlc3NpYmlsaXR5IG9uLCBrZWVwcyB0aG9zZSBz
ZXR0aW5ncyBhbmQgZ2l2ZXMgeW91IGEgd29ya2luZyAKPj4+PiAoYmFzZSwgbWluZCkgc3lzdGVt
IG91dCBvZiB0aGUgYm94Lgo+Pj4+Cj4+Pj4KPj4+PiAqIFByb3ZpZGVkIHlvdSBpbnN0YWxsIGFs
c2EtdXRpbHMvZXNwZWFrdXAgYXMgcGVyIGEgbm9ybWFsIAo+Pj4+IGFjY2Vzc2liaWxpdHkgQXJj
aCBpbnN0YWxsLiBUaGVyZSdzIGEgc3RlcCBpbiB0aGUgZ3VpZGVkIGluc3RhbGxlciAKPj4+PiB3
aGVyZSBpdCBhc2tzIGZvciBleHRyYSBwYWNrYWdlcywgdGhhdCdzIHdoZXJlIHlvdSBwbHVnIAo+
Pj4+IGFsc2EtdXRpbHMvZXNwZWFrdXAgaW4uIGVzcGVha3VwLnNlcnZpY2UgZ2V0cyBhdXRvIGVu
YWJsZWQgYXQgdGhlIAo+Pj4+IGVuZCBvZiB0aGUgaW5zdGFsbCBhcyBwYXJ0IG9mIHRoZSBpbnN0
YWxsZXIKPj4+Pgo+Pj4+Cj4+Pj4gKiogV29ya3MsIGFzIGxvbmcgYXMgeW91J3JlIG9rYXkgd2l0
aCBhIGJhc2UgaW5zdGFsbCBidXQgZ2V0dGluZyBhIAo+Pj4+IERFIHVwIGFuZCBydW5uaW5nIGlz
bid0IHRoYXQgYmFkIHJlYWxseSBvbmNlIHlvdSBkaWQgdGhlIGluc3RhbGwuIAo+Pj4+IEkndmUg
bm90IGdvdCB0aGUgZGVza3RvcCBvbmVzIHRvIHdvcmsgY3VycmVudGx5IGJ1dCBzdGlsbCBwb2tp
bmcgYXQgCj4+Pj4gaXQuIEknbSB0ZW1wdGVkIHRvIGFkZCBpbiBvcmNhLXNwZWVjaC1kaXNwYXRj
aGVyIGFuZCBzbyBmb3J0aCBpbnRvIAo+Pj4+IHRoZSBleHRyYSBwYWNrYWdlcyBzdGVwLgo+Pj4+
Cj4+Pj4KPj4+PiBhdCB0aGF0IGhvd2V2ZXIuCj4+Pj4KPj4+Pgo+Pj4+IE9uIDEyLzE0LzIxIDEy
OjQ2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBIaSwK
Pj4+Pj4KPj4+Pj4KPj4+Pj4gSSBkaWQgdXNlIHRoZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91
cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlmeSAKPj4+Pj4gdGhlIGlzby4KPj4+Pj4KPj4+Pj4KPj4+
Pj4gVGhlIGlzc3VlIHRoaXMgdGltZSBpcyB0aGF0IGFmdGVyIHJ1bm5pbmcgdGhlIGluc3RhbGxl
ciBhbmQgCj4+Pj4+IHJlYm9vdGluZywgbm90aGluZyBzcG9rZS4gdGhlIHNlZWluZ0FJIG9uIHRo
ZSBpcGhvbmUgY291bGQgcmVhZCAKPj4+Pj4gdGhlIHNjcmVlbiBqdXN0IGZpbmUsIGJ1dCBJIGNv
dWxkbid0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IExhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBNYXRlIHRo
YXQgZGlkbid0IHdhbnQgdG8gY29tZSBvbiwgbm8gCj4+Pj4+IG1hdHRlciB3aGF0IEkgZG8uCj4+
Pj4+Cj4+Pj4+Cj4+Pj4+IEkgZm91bmQgdGhhdCB3aXRoIEplbnV4LCBuZXZlciBleHBlY3QgdGhl
IHNhbWUgdGhpbmcgdG8gZ28gd3JvbmcgCj4+Pj4+IHR3aWNlLCBob3dldmVyIHNvbWV0aGluZyB3
aWxsIGJyZWFrLgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4+Cj4+Pj4+Cj4+
Pj4+IEJyYW5kdAo+Pj4+Pgo+Pj4+PiBPbiAyMDIxLzEyLzE0IDE0OjMxLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4gSmVudXggZ2V0cyByZWd1bGFyIHVw
ZGF0ZXMgbGF0ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRoYXQgCj4+Pj4+PiBjaGFuZ2VkIHRv
ZGF5Lgo+Pj4+Pj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/wqAgSWYgSSBmaW5k
IGFuIC5zaGE1MTIgZmlsZSBmaWxlIAo+Pj4+Pj4gZm9yIGFuCj4+Pj4+PiBpc28sIEkgd29uJ3Qg
aW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdpdGggdGhlIAo+Pj4+
Pj4gLnNoYTUxMgo+Pj4+Pj4gZmlsZS7CoCBTbyB0d28gcG90ZW50aWFsIHByb2JsZW1zIG5vdCB1
c2luZyBjdXJyZW50IEplbnV4IGluc3RhbGwgCj4+Pj4+PiBpc28gb3IKPj4+Pj4+IGZhaWxlZCB0
byB2ZXJpZnkgaXNvLsKgIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBwcm9ibGVtcywgCj4+
Pj4+PiBwbGVhc2Ugd3JpdGUKPj4+Pj4+IGRubC5uYXNoQGdtYWlsLmNvbSBhbmQgbGV0IGhpbSBr
bm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCAKPj4+Pj4+IG9uIHlvdXIKPj4+Pj4+IGlu
c3RhbGwgZmFpbC7CoCBUaGF0IG9uZSBpcyB0aGUgZGV2ZWxvcGVyLgo+Pj4+Pj4KPj4+Pj4+Cj4+
Pj4+PiBPbiBUdWUsIDE0IERlYyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+PiBIaSwKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSmVu
dXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQgYSBza2lwIGZvciBu
b3csIAo+Pj4+Pj4+IHRoYXQgaXMgdW5sZXNzCj4+Pj4+Pj4gdGhlIGRldiBhY3R1YWxseSBmaXhl
cyB0aGUgdGhpbmcuCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgYW0gb24gRmVkb3JhLCBmb3Ig
bm93LCBiZWNhdXNlIGl0IHdhcyB0aGUgbmVhcmVzdCBVc2Igc3RpY2sgSSAKPj4+Pj4+PiBjb3Vs
ZCBncmFiCj4+Pj4+Pj4gcXVpY2tseS4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBtaWdodCBq
dXN0IGdpdmUgdGhlIHZhbmlsbGEgQXJjaCBJU08gYW5vdGhlciBnby4gV2h5IG5vdD8KPj4+Pj4+
Pgo+Pj4+Pj4+IE9uIDIwMjEvMTIvMTQgMTM6MDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+IMKgwqBvciBNYW5qYXJvIEFyY2hpdGVjdC4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRoIHRoZSB2YW5pbGxh
IEFyY2ggSVNPIGFuZCB0aGUgCj4+Pj4+Pj4+IGd1aWRlZAo+Pj4+Pj4+PiBpbnN0YWxsZXIgKHRo
ZSBhcmNoaW5zdGFsbCBvbmUpLCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgCj4+Pj4+Pj4+IHRh
bGtpbmcsIHdlbnQKPj4+Pj4+Pj4gdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9l
c3BlYWt1cCBhbmQgdGhlbiBwdXQKPj4+Pj4+Pj4gc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2lj
ZXMgYW5kIGEgd2luZG93IG1hbmFnZXIgb24gb25jZSB0aGUgCj4+Pj4+Pj4+IHN5c3RlbSB3YXMK
Pj4+Pj4+Pj4gaW5zdGFsbGVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBKZW51eCBoYXMg
bmV2ZXIgcmVhbGx5IHdvcmtlZCBmb3IgbWUgb24gYSBWTSBvciBiYXJlIG1ldGFsIGF0IAo+Pj4+
Pj4+PiBhbGwsIHdoZXJlYXMKPj4+Pj4+Pj4gdGhlIG9mZmljaWFsIGFyY2ggSVNPIGlzIHdvcmtp
bmcgcmF0aGVyIHdlbGwsIGFuZCBJIGR1bm5vIGlmIAo+Pj4+Pj4+PiB0aGUgQXJjaGl0ZWN0Cj4+
Pj4+Pj4+IGVkaXRpb24gaXMgMzYvNjQgYml0IG9yIDMyYml0IG9ubHkgb3IgNjRiaXQgb25seS4g
QWRtaXR0ZWRseSwgCj4+Pj4+Pj4+IEkndmUgZ290IGEKPj4+Pj4+Pj4gNjRiaXQgVUVGSSBzeXN0
ZW0gc28gdGhlIG9mZmljaWFsIElTbyB3b3JrcyBmbGF3bGVzc2x5IG9uIGl0IAo+Pj4+Pj4+PiBo
b3dldmVyLCBidXQKPj4+Pj4+Pj4gWU1NViBvbiB0aGF0IG9uZVllcywgYnV0IHlvdSBwcm9iYWJs
eSBkb24ndCB3YW50IHRvIGhlYXIgaXQgaWYgCj4+Pj4+Pj4+IHlvdSBhcmUgc2V0Cj4+Pj4+Pj4+
IG9uIHVzaW5nIEplbnV4IGhvd2V2ZXIuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDEyLzE0LzIxIDA5
OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4g
SGkgYWxsLAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEkgZGVjaWRlZCB0byBnaXZlIEplbnV4IGFub3Ro
ZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQgCj4+Pj4+Pj4+PiBJIHRyaWVkLCBJCj4+
Pj4+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcgaW4gdG8g
dGhlIHN5c3RlbS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBEb2VzIGFueW9uZSBoYXZlIGFueSBhZHZp
Y2U/Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQWxzbywgaWYgdGhpcyBkb2Vzbid0IHdvcmsgb3V0LCBp
cyB0aGVyZSBhIGd1aWRlIGZvciBkb2luZyBhIAo+Pj4+Pj4+Pj4gTWFuamFybwo+Pj4+Pj4+Pj4g
YXJjaGl0ZWN0IGluc3RhbGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxl
IAo+Pj4+Pj4+Pj4gd2hpbGUgYWdvLCBhbmQKPj4+Pj4+Pj4+IGlmLCBhcyBJIHNhaWQsIEplbnV4
IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhhdCAKPj4+Pj4+Pj4+IG9uZSBh
IGdvLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFRoYW5rcyBzbyBsb25nLgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gQ29udGFjdDoKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBQaG9uZTogKzI3ICgwKTYwIDUyNSA5
MTgxIDx0ZWw6Ly8rMjc2MDUyNTkxODE+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gRW1haWw6IGJyYW5k
dC5zdGVlbmthbXBAZ21haWwuY29tIAo+Pj4+Pj4+Pj4gPG1haWx0bzpicmFuZHQuc3RlZW5rYW1w
QGdtYWlsLmNvbT4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1w
IAo+Pj4+Pj4+Pj4gPGh0dHA6Ly93d3cudHdpdHRlci5jb20vYnJhbmR0c3RlZW5rYW1wPgo+Pj4+
Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4K
Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

