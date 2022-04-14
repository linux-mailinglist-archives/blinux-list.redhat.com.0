Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BB55010A4
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 16:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649947569;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yZs5cnNuoXPRVRp5eIFnrXbjO3NNjZGKVkxTl3/WTE4=;
	b=XCssXpq0q3f2W/eRoJswLgnA04pqmsxJzQ8poFvqeCH3XHduke82EzP1V3pfuxa9B//zlG
	YXkYM/O87W5fnAWWTy33YFxeLYhJToqLmTzeLwyY+mdAdk9PC8TEOeVcOfkuSqty7bvo9N
	PHMHOBVmoidi41O1kaIzchg/MPWQ/lQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-435-yR1uBcDKOU2J1WunWMartw-1; Thu, 14 Apr 2022 10:46:07 -0400
X-MC-Unique: yR1uBcDKOU2J1WunWMartw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73BBF811E80;
	Thu, 14 Apr 2022 14:45:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EF2D87774;
	Thu, 14 Apr 2022 14:45:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ED0DA194034B;
	Thu, 14 Apr 2022 14:45:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 16:45:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
 <mailman.8597.1649918264.111201.blinux-list@redhat.com>
 <mailman.8550.1649941474.111203.blinux-list@redhat.com>
 <mailman.8518.1649942329.111202.blinux-list@redhat.com>
 <mailman.8567.1649944446.111203.blinux-list@redhat.com>
 <mailman.8345.1649945219.111205.blinux-list@redhat.com>
In-Reply-To: <mailman.8345.1649945219.111205.blinux-list@redhat.com>
Message-ID: <mailman.8640.1649947528.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBiZWcgdG8gZGlmZmVyLiBJIGFtIHJlZ2lzdGVyZWQgdG8gc2V2ZXJhbCBtYWlsaW5nIGxpc3Rz
LCBub25lIG9mIHRoZW0gaGlkZSB0aGUKbmFtZXMgb3IgYWRkcmVzc2VzIGluIHRoZSBtZXNzYWdl
cyB0aGVtc2VsdmVzIChidXQgdGhleSBkbyBoaWRlIHBhcnQgb2YgdGhlCmVtYWlsIGFkZHJlc3Mg
aW4gdGhlIGFyY2hpdmVzKS4gSSBhbHNvIGhhdmUgbWFpbnRhaW5lZCBhbiBlbWFpbCBsaXN0IGZv
ciB5ZWFycy4KCjEuIFRoZSBsaXN0cyBJIGZvbGxvdyBvciBtYWludGFpbiBhcmUgbm90IHNwYW1t
ZWQuCjIuIE1vcmVvdmVyLCBJIG1hbmFnZSBteSBvd24gZW1haWwgc2VydmVyLCBkaWQgbm90IGV2
ZW4gY2FyZSB0byBpbnN0YWxsIGFuCmFudGktc3BhbSBvbiBpdCBhbmQgcmVjZWl2ZSBzbyBmZXcg
c3BhbSBhbW9uZyB0aGUgbWFueSBlbWFpbHMgSSByZWNlaXZlIGZyb20gaXQKdGhhdCBJIGRpZCBu
b3QgZXZlbiBjcmVhdGUgYSBzcGFtIGZvbGRlciBpbiBteSBlbWFpbCBjbGllbnQgZm9yIHRoaXMg
c2VydmVyLgoKU28gSSB0aGluayB0aGUgaXNzdWUgd2FzIG1vcmUgd2l0aCB0aGUgbWFuYWdlbWVu
dCBvZiB0aGUgbGlzdCB0aGFuIGFueXRoaW5nCihsaWtlIGEgbm90IHNvIHNhZmUgcmVnaXN0cmF0
aW9uIHByb2Nlc3MsIG9yIG5vdCBkb2luZyBhIGRtYXJjIHZhbGlkYXRpb24gb2YgdGhlCmluY29t
aW5nIGVtYWlscykuCgpBbnl3YXkgSSBzZWUgdGhlIGN1cnJlbnQgYmVoYXZpb3IgYXMgYW4gaGlu
ZHJhbmNlIGF0IGxlYXN0IGZvciBtZSwgc286CjEuIEFzIHN1Z2dlc3RlZCBieSBBbGV4YW5kZXIg
SSB3aWxsIHRyeSB0byByZXF1ZXN0IGEgbGlzdCBhZG1pbiB0byBjaGFuZ2UgdGhpcwpiZWhhdmlv
ci4KMi4gaWYgdW5zdWNjZXNzZnVsIEkgd2lsbCBqdXN0IHVuc3Vic2NyaWJlLgoKSGF2ZSBhIGdv
b2QgZGF5LApEaWRpZXIKCgpMZSAxNC8wNC8yMDIyIMOgIDE2OjA2LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gVGhhdCBhY3R1YWxseSBtYWtlcyBhIGxv
dCBvZiBzZW5zZSB3aGVuIGl0J3MgcHV0IGxpa2UgdGhhdC4gU2VlIEkgZG9uJ3QgdGhpbmsgc2hv
d2luZyBuYW1lcyBvciBhZHJlc3NlcyB3b3VsZCBzb2x2ZSB0aGF0IGlzc3VlLCBpZiBhbnl0aGlu
ZyBpdCdkIGp1c3QgcmVhciBpdHMgdWdseSBoZWFkIGFnYWluLiBQbHVzIHRoZSBzY3JhcGluZyBv
ZiBlbWFpbCBhZGRyZXNzZXMsIHRvby5pCj4gCj4gT24gVGh1LCBBcHIgMTQsIDIwMjIgYXQgMDY6
NTM6NTlBTSAtMDcwMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4gTWFueSB5ZWFycyBhZ28sIHdoZW5ldmVyIG15c2VsZi1hbmQtb3RoZXJzIHdvdWxkIHBvc3Qg
aGVyZSwgYWxtb3N0Cj4+IGltbWVkaWF0ZWx5IGEgZ3JhcGhpYyBsYW5ndWFnZSByZXBseSBmcm9t
IGEgc3BhbW1lciB3b3VsZCBnZXQgc2VudC4gU28KPj4gZXZlbnR1YWxseSBoaWRpbmcgb3VyIG1h
aWwgYWRkcmVzc2VzIHNvbHZlZCB0aG9zZSBpc3N1ZXMuCj4+IENoaW1lCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

