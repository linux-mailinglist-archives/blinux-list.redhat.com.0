Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E6C53A3BA
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jun 2022 13:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654082488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OYJwCSQjzsHxsyEjOkQt43iieB+Rj4PPZiFc44ynwgI=;
	b=GMSH9oFQ1URI3VQWSVfWBRFnBS3UpZgHGYjbxtu/nRpl5el9C5QhNLxaoru70VDerKPmqZ
	OAdDosLRpVbh/VA3S3OZomiWLWhQ1sT5VyFhORj4TiPBuUKdFn4lMS7EXSx1ZLxDZszP4k
	baas7IDvYh7s5uGmHaXhhtxL4rbyFxs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-ofu8BuJ-NMiX90X1p3AvrQ-1; Wed, 01 Jun 2022 07:21:27 -0400
X-MC-Unique: ofu8BuJ-NMiX90X1p3AvrQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62F183C0ED4E;
	Wed,  1 Jun 2022 11:21:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 852AF1731B;
	Wed,  1 Jun 2022 11:21:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DFC78194707B;
	Wed,  1 Jun 2022 11:21:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Jun 2022 15:21:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: How to find my notebook's model number?
To: blinux-list@redhat.com
References: <mailman.20113.1654070039.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.20113.1654070039.111209.blinux-list@redhat.com>
Message-ID: <mailman.20015.1654082481.111203.blinux-list@redhat.com>
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

SGkgQnJhbmR0IGFuZCBhbGwsCgpCdWlsZCBhbmQgaW5zdGFsbCBsc2h3LgoKYXMgcm9vdDoKc2xh
cHQtc3JjIC1pIGxzaHcKClRoZW4gcnVuIGxzaHcgYXMgcm9vdC4KSXQgaGFzIGEgbWFuIHBhZ2UK
ClRoZSBvdXRwdXQgaXMgdmVyYm9zZSwgYnV0IHlvdSBjYW4gc3RvcmUgaXQgb3IgcGlwZSBpdCB0
byBhIHBhZ2VyIGxpa2UgdzNtLCBsaWtlOgpsc2h3IC1udW1lcmljfHczbQoKSGVyZSBpcyB0aGUg
dG9wIG9mIHRoZSBvdXRwdXQgb2Y6ICJMQU5HPUMgbHNodyAtbnVtZXJpYyIgaGVyZToKCnNsaW50
LmljaS5mcgogICAgZGVzY3JpcHRpb246IE5vdGVib29rCiAgICBwcm9kdWN0OiA0Mjg0Q1kxCiAg
ICB2ZW5kb3I6IExFTk9WTwogICAgdmVyc2lvbjogVGhpbmtQYWQgVzUyMAogICAgc2VyaWFsOiBS
OU0xNThQCiAgICB3aWR0aDogNjQgYml0cwogICAgY2FwYWJpbGl0aWVzOiBzbWJpb3MtMi42IGRt
aS0yLjYgc21wIHZzeXNjYWxsMzIKICAgIGNvbmZpZ3VyYXRpb246IGFkbWluaXN0cmF0b3JfcGFz
c3dvcmQ9ZGlzYWJsZWQgY2hhc3Npcz1ub3RlYm9vawpmYW1pbHk9VGhpbmtQYWQgVzUyMCBwb3dl
ci1vbl9wYXNzd29yZD1kaXNhYmxlZAp1dWlkPTgxOTdFM0EzLTY0NTItQ0IxMS05ODhFLUIzQzlB
RjE4MDlENAoKQ2hlZXJzLApEaWRpZXIKCgpMZSAwMS8wNi8yMDIyIMOgIDA5OjUzLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgYWxsLAo+IAo+IEkg
d291bGQgbGlrZSB0byBtYWtlIHNvbWUgdXBncmFkZXMgdG8gbXkgSHVhd2VpIE1hdGVCb29rIEQx
NSwgYnV0IGFtIG5vdCBzdXJlIGlmCj4gd2hhdCBJIGhhdmUgaW4gbWluZCBpcyBkb2FibGUuIFRo
ZSBvbmx5IHdheSBJIGNhbiBjaGVjayBpcyB0byBoYXZlIHRoZSBtb2RlbAo+IG51bWJlciBvZiB0
aGUgTWFjaGluZS4KPiAKPiBUaGUgcXVlc3Rpb24sIGhvdyBkbyBJIGRvIHRoaXMgYW5kIGhhdmUg
dGhlIHJlc3VsdHMgcHJpbnRlZCB0byBhIC50eHQgZmlsZSBzbyBJCj4gaGF2ZSBpdCBoYW5keT8K
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

