Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 021BC44B216
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 18:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636479750;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RSbru8wL3cnigY3OlIOJ7bPoCqK827RK3xCi8SvW4Rs=;
	b=fbOp2s+4FYf4RdS+cSQItVo2IeotZ6RRSoFx3XEgWkBKAxw8zkalCG8O/GN3rSalxMPUA4
	xX+H1SmUCIcNzi+5t/forPzx9oquvw5JIKdVpUC/0HbB7cfyMNY6a6pqf9Rx+5uO5N7mXu
	oOj20M2wJZCegXZIhrtoDz7z2/N4lco=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-SA-BV-jOP4-xdm_8SHy4Vg-1; Tue, 09 Nov 2021 12:42:28 -0500
X-MC-Unique: SA-BV-jOP4-xdm_8SHy4Vg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB40718125C1;
	Tue,  9 Nov 2021 17:42:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22CE2101F6D4;
	Tue,  9 Nov 2021 17:42:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 19C7B1800FE4;
	Tue,  9 Nov 2021 17:42:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9Hfq7N031438 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 12:41:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 114A22144B20; Tue,  9 Nov 2021 17:41:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0BED02144B22
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 17:41:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 430D6811E7F
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 17:41:44 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-170-RA7rjgJHNiqsiAv4otZzeA-1;
	Tue, 09 Nov 2021 12:41:42 -0500
X-MC-Unique: RA7rjgJHNiqsiAv4otZzeA-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 2351DA3EF6
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:41:05 +0100 (CET)
Message-ID: <d5811311-744d-1a2a-6e30-be6f6da1d2e0@slint.fr>
Date: Tue, 9 Nov 2021 18:41:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
	<f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
	<d70e4c45-12d3-e4ba-d137-c79d1247f3f5@slint.fr>
	<48ab926a-e663-dff8-6680-b37cdfbecef4@gmail.com>
In-Reply-To: <48ab926a-e663-dff8-6680-b37cdfbecef4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A9Hfq7N031438
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCldoZW4gdXNpbmcgc2xhcHQtc3JjIHRoZSBwYWNrYWdlcyBhcmUgYnVpbHQg
b24geW91ciBtYWNoaW5lIGZyb20gc2NyaXB0cyAKYXZhaWxhYmxlIGF0IGh0dHBzOi8vc2xhY2ti
dWlsZHMub3JnLgoKRm9yIHRoYXQgeW91IG5lZWQgdG8gZmlyc3QgdHlwZSBhcyByb290OgpzbGFw
dC1zcmMgLXUKb3IKc2xhcHQtc3JjIC0tdXBkYXRlCgpUaGlzIHdpbGwgdXBkYXRlIHRoZSBsb2Nh
bCBjYWNoZSBvZiB0aGUgcmVtb3RlIHNsYWNrYnVpbGRzLCB3cml0aW5nIHRoZSAKZmlsZToKL3Rt
cC9zbGFwdC1zcmMvc2xhY2tidWlsZHMtZGF0YQoKVG8ga25vdyBtb3JlOgpzbGFwdC1zcmMgLS1o
ZWxwCm1hbiBzbGFwdC1zcmMKaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCNzb2Z0
d2FyZV9tYW5hZ2VtZW50CmFuZCBtb3JlIHNwZWNpZmljYWxseToKaHR0cHM6Ly9zbGludC5mci9k
b2MvSGFuZEJvb2suaHRtbCNzbGFwdF9zcmMKCkNoZWVycywKRGlkaWVyCgoKTGUgMDkvMTEvMjAy
MSDDoCAxNzoyNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+IFRoYW5rcyBEaWRpZXIsCj4gCj4gSSB0cmllZCB0byBpbnN0YWxsIHdpdGggYm90aCBtZXRo
b2RzIGJ1dCBJIGdvdCBhIG1lc3NhZ2UgdGhhdCByZWFkczoKPiAKPiBmYWlsZWQgdG8gb3BlbiBz
bGFja2J1aWxkcy1kYXRhIGZvciByZWFkaW5nLiBVbmFibGUgdG8gZmluZCBhbGwgCj4gc3BlY2lm
aWVkIHNsYWNrYnVpbGRzLgo+IAo+IAo+IE1heSBiZSBJIG5lZWQgdG8gZG93bmxvYWQgcGFja2Fn
ZXMgZnJvbSBzb21ld2hlcmU/IENoZWVycywKPiAKPiBJYnJhaGltCj4gCj4gT24gMTEvOS8yMSA2
OjA3IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSwg
aW4gYWRkaXRpb246Cj4+Cj4+IGRhbmNlW35dJCBMQU5HPUMgc3BpIHdoYXRzYXBwCj4+IEF2YWls
YWJsZSBwYWNrYWdlczoKPj4gTm9uZQo+Pgo+PiBBdmFpbGFibGUgU2xhY2tCdWlsZHM6Cj4+IHBp
ZGdpbi13aGF0c2FwcCBbTm90IGluc3RhbGxlZF06IHBpZGdpbi13aGF0c2FwcCAoV2hhdHNBcHAg
UGx1Z2luIGZvciAKPj4gUGlkZ2luKQo+PiBwdXJwbGUtZ293aGF0c2FwcCBbTm90IGluc3RhbGxl
ZF06IHB1cnBsZS1nb3doYXRzYXBwIChsaWJwdXJwbGUvUGlkZ2luIAo+PiBwbHVnaW4gZm9yIFdo
YXRzQXBwIFdlYikKPj4gZGFuY2Vbfl0kCj4+Cj4+IFRvIGJ1aWxkIGFuZCBpbnN0YWxsLCBhcyBy
b290Ogo+PiBzbGFwdC1zcmMgLWkgcGlkZ2luLXdoYXRzYXBwCj4+IG9yCj4+IHNsYXB0LXNyYyAt
aSBwdXJwbGUtZ293aGF0c2FwcAo+Pgo+PiBDYXZlYXQgSSBkaWRuJ3QgdXNlIHRoZXNlIGFwcHMs
IG5vdCB1c2luZyBXaGF0c2FwcCBzbyBub3QgaGF2aW5nIGFuIAo+PiBhY2NvdW50Lgo+Pgo+PiBD
aGVlcnMsCj4+IERpZGllcgo+Pgo+Pgo+PiBMZSAwOS8xMS8yMDIxIMOgIDAxOjI4LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIaSBJYnJhaGltLAo+
Pj4KPj4+IE9mZiB0b3BpYyBidXQgc3RpbGwuLi4KPj4+IEkgU2xpbnQgd2Ugc2hpcDoKPj4+IG5j
VGVsZWdyYW0gaHR0cHM6Ly9naXRodWIuY29tL05hbm9zZWIvbmNUZWxlZ3JhbQo+Pj4gVGVsZWdy
YW0gRGVza3RvcCAoSSBqdXN0IHJlYWxpemVkIHRoYXQgd2UgaGF2ZSB0d28gbWVudSBlbnRyaWVz
ID8/PykKPj4+IHRlbGVncmFtLWNsaSBodHRwczovL2dpdGh1Yi5jb20vdnlzaGVuZy90Zwo+Pj4g
dGVsZWdyYW0tcHVycGxlIChwbHVnLWluIGZvciBwaWRnaW4pIAo+Pj4gaHR0cHM6Ly9naXRodWIu
Y29tL21ham4vdGVsZWdyYW0tcHVycGxlIChtYXliZSBzd2l0Y2ggdG8gdGRsaWItcHVycGxlKQo+
Pj4KPj4+IEFsbCB0aGlzIGluIGFkZGl0aW9uIHRvIFRlbGVncmFtIFdFQiBhbmQgVGVsZWdyYW0g
b24geW91ciBwaG9uZS4KPj4+Cj4+PiBKdXRzIHNheWluZy4uLgo+Pj4KPj4+IENoZWVycywKPj4+
IERpZGllcgo+Pj4KPj4+IExlIDA4LzExLzIwMjEgw6AgMTk6MzUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4+PiBIZWxsbyBmb2xrcywKPj4+Pgo+Pj4+
IEkgYW0gd29uZGVyaW5nIGlmIGFueSBvZiB5b3UgdXNlIGFuIGFjY2Vzc2libGUgTGludXggY2xp
ZW50IGZvciAKPj4+PiBXaGF0c2FwcC4gV2hhdCBpcyB0aGUgYmVzdCB3YXkgb2YgdXNpbmcgV2hh
dHNhcHAgb24gTGludXggaWYgbm8gCj4+Pj4gYWNjZXNzaWJsZSBjbGllbnQgaXMgYXZhaWxhYmxl
Pwo+Pj4+Cj4+Pj4gQW55IGlkZWFzPwo+Pj4+Cj4+Pj4gQ2hlZXJzLAo+Pj4+Cj4+Pj4gSWJyYWhp
bQo+Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

