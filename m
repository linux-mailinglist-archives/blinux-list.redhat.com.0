Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7636F7597
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 21:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683230343;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kdx7VhZZiYnjuXULx/q+5/Kvt6OydCb+MXZWqgp4SaU=;
	b=VtkwKAdgt4P0NqepSpmlM7fagzCTs7h2uoOuqLZJvKCWPuBgvfy6/BTvxeTHQgeiv6CzAv
	reZZHxcNlX8p/cbiRF9nMxGU7R7c6lZCRgFov1e2iyNYG3+uYGmDHZjvntkedjbypZZaY7
	45ATgNnON+xQLTrgmH1yVtG+ZoCmOaA=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-214-HRlnQ3_eONuPdUv-FEjhUg-1; Thu, 04 May 2023 15:58:59 -0400
X-MC-Unique: HRlnQ3_eONuPdUv-FEjhUg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95607811E7C;
	Thu,  4 May 2023 19:58:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6BF6C492C3E;
	Thu,  4 May 2023 19:58:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC4721946A49;
	Thu,  4 May 2023 19:58:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 15:58:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1746.1683212513.290943.blinux-list@redhat.com>
In-Reply-To: <mailman.1746.1683212513.290943.blinux-list@redhat.com>
Message-ID: <mailman.1827.1683230336.290941.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgQ3JpZXMswqAgSSBnb3QgaXQgaW5zdGFsbGVkIGJ5IGluc3RhbGxpbmcgcHl0aG9uLWV2ZGV2
LsKgIE5vdyBJIGp1c3QgCm5lZWQgdG8gZmlndXJlIG91dCBob3cgdG8gZW5hYmxlIGl0IHRvIHN0
YXJ0IGF0IGJvb3QuIFRoYW5rcywgYnR3IHNob3VsZCAKSSBoYXZlIHJhbiB0aGUgcGlwIGluc3Rh
bGwgY29tbWFuZCBhcyByb290P8KgIEkgZ290IGEgd29ybmluZyBhYm91dCAKcnVubmluZyBhcyBy
b290IGNvdWxkIGNhdXNlIHBlcm1pdGlvbiBwcm9ibGVtcy7CoCBKdXN0IHdvbmRlcmluZy4KCgpN
YXR0aGV3CgoKCk9uIDUvNC8yMyAxMTowMSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBIb3dkeSBNYXR0aGV3LAo+Cj4gY2FuIHlvdSBwb3N0IHRoZSBleGFj
dCBlcnJvciBtZXNzYWdlPwo+Cj4gd2hhdCBoYXBwZW5zIGlmIHlvdSBkbzoKPiBzdWRvIHB5dGhv
biAtYyAnaW1wb3J0IGV2ZGV2Jwo+Cj4gZG8geW91IGdldCBhbiBlcnJvciBtZXNzYWdlPwo+Cj4g
Y2hlZXJzIGNocnlzCj4KPgo+IG0gMDMuMDUuMjMgdW0gMjA6NDIgc2NocmllYiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+PiBIaSBhbGwsCj4+Cj4+Cj4+IEkgYW0gdXNpbmcg
ZmVkb3JhIDM4IHdvcmtzdGF0aW9uIGlmIHRoaXMgbWF0dGVycyBhbmQgd2hlbiB0cnlpbmcgdG8g
Cj4+IGluc3RhbGwgZmVucmlyIEkgZ2V0IGEgZXJyb3IgZnJvbSBldmRldiBvciBzb21ldGluZyBh
Ym91dCBhIG5vIHN1Y2ggCj4+IGZpbGUgb3IgZGlyZWN0b3J5LsKgIEkgZmlyc3QgaW5zdGFsbGVk
IHBpcCB0aGVuIHJhbiBwaXAgaW5zdGFsbCBhbmQgCj4+IGdvdCB0aGF0IGVycm9yLsKgIEFueXdh
eSB1c2luZyBmZW5yaXIgaW4gZmVkb3JhIGFuZCBob3cgZGlkIHlvdSBnZXQgaXQgCj4+IHdvcmtp
bmc/wqAgSXMgdGhlcmUgYW5vdGhlciBwYWNrYWdlIEkgbmVlZCB0byBpbnN0YWxsIHNvbWV3YXJl
P8KgIAo+PiBUaGFua3MgaWYgYW55b25lIGhhcyBhbnkgaWRlYXMgb24gd2hhdCBtaWdodCBiZSBn
b2luZyBvbiBJIHdvdWxkIGxpa2UgCj4+IHNvbWUgcG9pbnRlcnMgb24gdGhpcyBvbmUuCj4+Cj4+
Cj4+IE1hdHRoZXcKPj4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

