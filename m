Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 390DE370027
	for <lists+blinux-list@lfdr.de>; Fri, 30 Apr 2021 20:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619805921;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EkQwLq3tO8KCahmBjqTmnYYiklWnsKURmbIShaPfcUQ=;
	b=BxJmzMyIB06n3qOVa4nfSSQbNg4eHP11ux0s8IT4lQSuIm75WdWS/97UOFVG05qP/PWsSX
	gRBUeMFuu/9qfKHTdKqmk7gSXK7cck4aj8yxGE23Qa1jKCoVWAIWGRauLGfHMGRKHmEwQS
	jLJJGIuOZMem9ppnXd3d4OzA3NzdM+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-ofi9h7icMUOv_NFzut3-kw-1; Fri, 30 Apr 2021 14:05:05 -0400
X-MC-Unique: ofi9h7icMUOv_NFzut3-kw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73B87805751;
	Fri, 30 Apr 2021 18:05:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B6212CFAF;
	Fri, 30 Apr 2021 18:05:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC68B180B464;
	Fri, 30 Apr 2021 18:04:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13UI4ppZ013849 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Apr 2021 14:04:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D7BD117A96B; Fri, 30 Apr 2021 18:04:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38E761054FFF
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:04:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D03AD100E651
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 18:04:48 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-28-OkBxHjKkN1yFHHAkkV8ZXQ-1;
	Fri, 30 Apr 2021 14:04:44 -0400
X-MC-Unique: OkBxHjKkN1yFHHAkkV8ZXQ-1
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7177FA1CD8
	for <blinux-list@redhat.com>; Fri, 30 Apr 2021 19:04:32 +0200 (CEST)
Subject: Re: Best Distro for Blind
To: blinux-list@redhat.com
References: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
Message-ID: <6f3672de-8f76-5432-e89d-abc4f23b0dc9@slint.fr>
Date: Fri, 30 Apr 2021 20:03:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4a0283bb-6247-cba9-28b5-3562a4ebaf6b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13UI4ppZ013849
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gSm9obgoKU2xpbnQgbWVldHMgeW91ciByZXF1aXJlbWVudHMuCgpJdCB3b3JrcyB3ZWxs
IG9uIGEgVGhpbmtwYWQgWDIyMCBhbmQgaXMgZnVsbHkgYWNjZXNzaWJsZSB3aXRoIEJyYWlsbGUg
YW5kCnNwZWVjaCBmcm9tIGluc3RhbGxhdGlvbiB0byB1c2FnZSwgaW4gZ3JhcGhpY2FsIGVudmly
b25tZW50cyBhcyBpbiAKY29uc29sZSBtb2RlLgoKSSdkIHJlY29tbWVuZCB5b3UgdXNlIHRoZW4g
IkF1dG8iIG1vZGUgb2YgaW5zdGFsbGF0aW9uLCB2ZXJ5IApzdHJhaWdodGZvcndhcmQuCgpCeSBk
ZWZhdWx0IHlvdSdsbCBnZXQgTWF0ZSBhcyBkZXNrdG9wLgoKU29mdHdhcmUgZm9yIGJyb3dzaW5n
LCBlbWFpbCwgd29yZCBwcm9jZXNzaW5nIGFuZCBzcHJlYWRzaGVldHMgYXJlIGluY2x1ZGVkLAph
bmQgaW5kZWVkIHNzaCBpcyBhdmFpbGFibGUuCgpUbyBrbm93IG1vcmUsIHNvbWUgbGlua3M6Cmh0
dHBzOi8vc2xpbnQuZnIKaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQu
Mi4xL1JFQURNRS5pbnN0YWxsYXRpb24KaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQv
c2xpbnQtMTQuMi4xL2RvYy9BY2Nlc3NpYmlsaXR5L0FjY2Vzc2liaWxpdHkKCldlIGhhdmUgbWFp
bGluZyBsaXN0LiBUbyByZWdpc3RlciwganVzdCBlbWFpbCBzbGludC1yZXF1ZXN0QGZyZWVsaXN0
cy5vcmcKdGhlIHN1YmplY3QgJ3N1YnNjcmliZScsIHRoZW4gYW5zd2VyIHRoZSBlbWFpbCB5b3Ug
d2lsbCByZWNlaXZlLgoKV2UgYXJlIGFsc28gb24gSVJDOiBzZXJ2ZXIgaXJjLmZyZWVub2RlLm5l
dCwgY2hhbm5lbCAjc2xpbnQKCkNoZWVycywKRGlkaWVyCi0tLQpTbGludCBtYWludGFpbmVyCmRp
ZGllcn5hdH5zbGludH5kb3R+ZnIKCgpMZSAzMC8wNC8yMDIxIMOgIDE5OjIwLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8sCj4gCj4gSSBhbSBh
IHRvdGFsbHkgYmxpbmQgcGVyc29uIGFuZCBhIExPTkcgdGltZSBXaW5kb3dzL0phd3MvTlZEQSB1
c2VyLiBJIGFtIAo+IHdvbmRlcmluZyB3aGF0IHdvdWxkIGJlIGEgcmVjb21tZW5kYXRpb24gZm9y
IHRoZSBiZXN0IGRpc3Ryby9HVUkgCj4gZW52aXJvbm1lbnQgdG8gYmVnaW4gdXNpbmc/wqAgSSB3
b3VsZCBsb3ZlIHRvIGJlIGFibGUgdG8gbW92ZSBhd2F5IGZyb20gCj4gV2luZG93cyBhbmQgdXNl
IExpbnV4IGZ1bGwgdGltZSBmb3IgYnJvd3NpbmcsIGVtYWlsLCB3b3JkIHByb2Nlc3NpbmcgYW5k
IAo+IHNwcmVhZHNoZWV0cy4gSSBoYXZlIGEgVGhpbmtwYWQgWDIyMCB0aGF0IEkgY2FuIHVzZSBm
b3IgTGludXguIEFib3V0IDE1IAo+IHllYXJzIGFnbywgSSBwbGF5ZWQgYXJvdW5kIHdpdGggVmVu
dXgsIGJ1dCB0aGF0IHByb2plY3Qgc2VlbXMgdG8gYmUgCj4gZG9ybWFudCBub3cuIEkgaGF2ZSBh
IFBpIDNCKyBydW5uaW5nIHNvbWUgaGFtIHJhZGlvIHNvZnR3YXJlIGFuZCBJIGhhdmUgCj4gdG8g
U1NIIGludG8gaXQgb2NjYXNpb25hbGx5IGFuZCBwZXJmb3JtIHNvbWUgY29tbWFuZCBsaW5lIHN0
dWZmLiBGb3IgCj4gZGFpbHkgdXNhZ2UsIEkgd2FudCBhIGZ1bGwgR1VJIGVudmlyb25tZW50Lgo+
IAo+IAo+IFRoYW5rcyBpbiBhZHZhbmNlIGZvciBhbnkgc3VnZ2VzdGlvbnMuCj4gCj4gCj4gSm9o
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

