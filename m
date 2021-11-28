Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 727044609B1
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638131983;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gdLzfn2kqkIDz6tsb3kshcD54SAxt9M0jKRUSFJTc8Q=;
	b=VHdS+3+wTfXH5a3SdwtcvNQdk4DwvzyGLA5ks++KUt94qly3wUx1ef8k+stVPOG1J8tpAs
	lDv1Dwcv/vV+ZmPgx3vgwopGfTO1Il10CM4ISsqx0CavhNcJMOconChPBNu0FVW8mMWBN9
	ysUqKuVDcORkvnNXBPIl6gNAc1Eg5/o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-240-O737TTBUO-21zyr0jvCoGg-1; Sun, 28 Nov 2021 15:39:40 -0500
X-MC-Unique: O737TTBUO-21zyr0jvCoGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F9EA1853028;
	Sun, 28 Nov 2021 20:39:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB7A460854;
	Sun, 28 Nov 2021 20:39:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2B6061809C89;
	Sun, 28 Nov 2021 20:39:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKdQuV020784 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:39:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 740BD1121319; Sun, 28 Nov 2021 20:39:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FD171121315
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:39:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9D271185A79C
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:39:23 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-10-7tycWjuEMd20pGYmCnD2pw-1;
	Sun, 28 Nov 2021 15:39:21 -0500
X-MC-Unique: 7tycWjuEMd20pGYmCnD2pw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 70C45A3EDA
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:38:39 +0100 (CET)
Message-ID: <c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
Date: Sun, 28 Nov 2021 21:39:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
In-Reply-To: <91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASKdQuV020784
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

QWN0dWFsbHkgRGFuaWVsIFRyaXplbiBzZWVtcyB0byBiZSBhIHBzZXVkbyBmb3IgRGFuaWVsIMiY
dXRldSwgYSAKbWF0aGVtYXRpY2lhbgpmcm9tIFJvbWFuaWEuCkRpZGllcgoKUFMgYW5kIE9UOiBN
eSBmcmllbmQsIGlzbid0IGl0IHRpbWUgZW5vdWdoIHRoYXQgeW91IG1hbmFnZSB5b3VyIExpbnV4
IHN5c3RlbQp5b3Vyc2VsZiBtb3N0IG9mIHRoZSB0aW1lLCBub3QgcmVseWluZyBvbiB5b3VyIExp
bnV4IHNwZWNpYWxpc3Qgb3IgTGludXgKcGVyc29uLCBob3dldmVyIHlvdSBjYWxsIHRoZXk/CgpD
aGVlcnMsCkRpZGllcgoKTGUgMjgvMTEvMjAyMSDDoCAyMToxMiwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIENoaW1lLAo+IAo+IEFtYXppbmdseSB0
aGUgc2FtZSBndXkgKERhbmllbCBUcml6ZW4pIG1haW50YWluIGJvdGggcGlwZS12aWV3ZXIgYW5k
Cj4geW91dHViZS12aWV3ZXIuCj4gCj4gVGhlIG9ubHkgb2J2aW91cyBkaWZmZXJlbmNlIGJlaW5n
IHRoYXQgcGlwZS12aWV3ZXIgZG9lcyBub3QgbmVlZCBhIAo+IFlvdVR1YmUgQVBJCj4ga2V5LiBG
b3IgdGhpcyByZWFzb24gSSB3aWxsIHBhY2thZ2UgdGhpcyBvbmUuCj4gCj4gQ2hlZXJzLAo+IERp
ZGllcgo+IAo+IExlIDI4LzExLzIwMjEgw6AgMjA6MjgsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGkgRGlkaWVyOiBZZXN0ZXJkYXkgSSB0cmllZCBw
aXBlLXZpZXdlciwgc3VyZSBpdCB3b3JrcywgYnV0IGV2ZW4gd2l0aCAKPj4gbWF4IHJlc3VsdHMg
c2V0IGF0IDUwLCBJIG9ubHkgZ2V0IDIwLCB1bmxpa2UgeW91dHViZS12aWV3ZXIgd2hlcmUgaXQg
Cj4+IGlzIDUwLiBXaGVuIEkgaGFkIHN0cmF3LXZpZXdlciwgSSBub3RpY2VkLCB5b3UgY291bGQg
Z2V0IGF3YXkgd2l0aCBtYXggCj4+IHJlc3VsdHMgYXQgNTggYnV0IGhhbGYgb2YgdGhlIGl0ZW1z
IHdlcmUgZHVwbGljYXRlcy4gQnkgdGhlIHdheSwgbXkgCj4+IExpbnV4IHBlcnNvbiB3cm90ZSBt
ZSBhbiBhbGlhcyB0byB1cGRhdGUgeW91dHViZS12aWV3ZXIuIEFjdHVhbGx5LCBpdHMgCj4+IHNo
b3J0IGVub3VnaC4KPj4gIyEvdXNyL2Jpbi9zaAo+PiBjZCAvaG9tZS9jaGltZS95b3V0dWJlLXZp
ZXdlci8KPj4gZ2l0IGZldGNoCj4+IGdpdCBtZXJnZQo+Pgo+PiBwZXJsIEJ1aWxkLlBMCj4+IHN1
ZG8gL2hvbWUvY2hpbWUveW91dHViZS12aWV3ZXIvLi9CdWlsZCBpbnN0YWxsZGVwcwo+PiBzdWRv
IC9ob21lL2NoaW1lL3lvdXR1YmUtdmlld2VyLy4vQnVpbGQgaW5zdGFsbAo+PiBCYWNrIGFnYWlu
IGxpdmUsIEkganVzdCB0eXBlICJ0dWJlIiBhbmQgbm93IEkgYW0gYXQgMy45LjYKPj4gQ2hpbWUK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

