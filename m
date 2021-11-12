Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FEF44E345
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 09:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636706067;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V8uVUtLTzd/VEMViC25rYgVtPK5CMq1CC6r4iAEXIa4=;
	b=fIuZlWhXmNC2/QuM2l1jGUBUNV/3xBWijq+Jz2qjVMZ35/+zw9ovvRkFyRAPYMs0GgDRZb
	yrGI6xAgduOCmPmz5FHbRLG6rGyVxTZaBSBBHXzPJdx0psb+eCXbC2uBtqF9+qU/kzXYVa
	D5XONqwOqPdrQrg/Ln6+unH/aUxEWXY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-169-XisVNTKbNeezI5d51O_d2g-1; Fri, 12 Nov 2021 03:34:24 -0500
X-MC-Unique: XisVNTKbNeezI5d51O_d2g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE859107B280;
	Fri, 12 Nov 2021 08:34:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 114DD5E26A;
	Fri, 12 Nov 2021 08:34:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97C521800B9E;
	Fri, 12 Nov 2021 08:34:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC8Wx8S010785 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 12 Nov 2021 03:32:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 714F72026D6B; Fri, 12 Nov 2021 08:32:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C6302026D48
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 08:32:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3369F8007B1
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 08:32:54 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-575-I6iUC1pmM_W7seEhr8YPyQ-1;
	Fri, 12 Nov 2021 03:32:52 -0500
X-MC-Unique: I6iUC1pmM_W7seEhr8YPyQ-1
Received: from [192.168.1.25] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DB2A2A1CEE
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 07:32:14 +0100 (CET)
Message-ID: <00a08b15-ae80-e669-06bc-a7a62104fddf@slint.fr>
Date: Fri, 12 Nov 2021 10:32:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: How do you format a disk using slint?
To: blinux-list@redhat.com
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
	<6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
	<3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
	<ffd7ceb4-2c64-473f-43bd-d1566899bfc4@gmail.com>
	<f75f32a0-0955-fceb-7dbe-f06e6eda71ca@gmail.com>
In-Reply-To: <f75f32a0-0955-fceb-7dbe-f06e6eda71ca@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AC8Wx8S010785
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

SGkgSWJyYWhpbSwKCkkganVzdCBjaGVja2VkLCBpbnN0YWxsaW5nIHRoaXMgcGFja2FnZSBjcmVh
dGVzIGEgbWVudSBlbnRyeSBjYWxsZWQgCkRpc2tzIGluIHRoZSBzdWItbWVudSBVdGlsaXR5IChB
Y2Nlc3NvaXJlcyBpbiBGcmVuY2gpCgpBcyB1c3VhbCwgYmUgKnZlcnkqIGNhcmVmdWwgd2l0aCBz
dWNoIGFwcGxpY2F0aW9uLi4uCgpDaGVlcnMKRGlkaWVyCgpMZSAxMi8xMS8yMDIxIMOgIDA1OjM0
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gVGhhbmtz
IGEgbWlsbGlvbiBEYXZlLAo+IAo+IG5vdyBldmVyeXRoaW5nIHdvcmtzIGZpbmUuIFlvdSBhcmUg
dHJ1bHkgb2YgZ3JlYXQgaGVscC7CoCBUaGFua3MgZm9yIHlvdXIgCj4gcGF0aWVuY2UuCj4gCj4g
Cj4gQ2hlZXJzLAo+IAo+IElicmFoaW0KPiAKPiBPbiAxMS8xMS8yMSAxMDo1MSBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gc2xhcHQtc3JjIC0taW5zdGFs
bCBnbm9tZS1kaXNrLXV0aWxpdHkuCj4+Cj4+Cj4+Cj4+IE9uIDExLzExLzIxIDIyOjMxLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gc2xhcHQtc3JjIGdub21l
LWRpc2stdXRpbGl0eQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

