Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A7D4CED49
	for <lists+blinux-list@lfdr.de>; Sun,  6 Mar 2022 20:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646593274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cjGZ3vqIeFLN5fGG+Og+5Pvd9pXPiLX13mrV32Z6MNs=;
	b=LhGlzM1nggJYcaO8iqF9mDDnUGQkRBaRu9YJkk3QNKB9vrEZjSXCXCStg6ebsth3bRf/h/
	hxLCbO5fSmrl/WPFsNGSLrwPepJLHDynpO3JTqmTpir9YweG8KB7JOB4yIfJrtSgn8a3JW
	MOsurb2y+UMrKXpeNB0hwbNoCbeRVXA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-562-6jJqD4slN82WYH01hq4LaA-1; Sun, 06 Mar 2022 14:01:10 -0500
X-MC-Unique: 6jJqD4slN82WYH01hq4LaA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 133093817481;
	Sun,  6 Mar 2022 19:01:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 67BF548FB05;
	Sun,  6 Mar 2022 19:01:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C4E8C1931BD1;
	Sun,  6 Mar 2022 19:01:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 6 Mar 2022 20:00:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Is Their a Later Version of Speechd-up?
To: blinux-list@redhat.com
References: <mailman.9.1646583072.111206.blinux-list@redhat.com>
 <mailman.14.1646588250.111205.blinux-list@redhat.com>
 <mailman.10.1646588785.111203.blinux-list@redhat.com>
In-Reply-To: <mailman.10.1646588785.111203.blinux-list@redhat.com>
Message-ID: <mailman.12.1646593263.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnkgQ2hpbWUsIHRoaXMgY2VydGFpbmx5IHByb3ZpZGVzIHVzZWZ1bCBpbmZvcm1hdGlvbiBi
dXQgSSBjYW4ndCBoZWxwIHdpdGgKdGhhdCBieSBsYWNrIG9mIGtub3dsZWRnZSBvZiBzeXN0ZW1k
IGFuZCBEZWJpYW4uCgpEaWRpZXIKCkxlIDA2LzAzLzIwMjIgw6AgMTg6NDYsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBIaSBEaWRpZXIsIHdpbGwgdHJ5
IHlvdXIgbGluaywgYnV0IG1lYW53aGlsZSBoZXJlIGFyZSBlcnJvcnMKPiBTZXR0aW5nIHVwIHNw
ZWVjaGQtdXAgKDAuNX4yMDExMDcxOS0xMSkgLi4uCj4gSm9iIGZvciBzcGVlY2hkLXVwLnNlcnZp
Y2UgZmFpbGVkIGJlY2F1c2UgdGhlIGNvbnRyb2wgcHJvY2VzcyBleGl0ZWQgd2l0aCBlcnJvcgo+
IGNvZGUuCj4gU2VlICJzeXN0ZW1jdGwgc3RhdHVzIHNwZWVjaGQtdXAuc2VydmljZSIgYW5kICJq
b3VybmFsY3RsIC14ZXUKPiBzcGVlY2hkLXVwLnNlcnZpY2UiIGZvciBkZXRhaWxzLgo+IGludm9r
ZS1yYy5kOiBpbml0c2NyaXB0IHNwZWVjaGQtdXAsIGFjdGlvbiAicmVzdGFydCIgZmFpbGVkLgo+
IHggc3BlZWNoZC11cC5zZXJ2aWNlIC0gTFNCOiBJbnRlcmZhY2UgYmV0d2VlbiBzcGVha3VwIGFu
ZCBzcGVlY2gtZGlzcGF0Y2hlcgo+IMKgwqDCoMKgIExvYWRlZDogbG9hZGVkICgvZXRjL2luaXQu
ZC9zcGVlY2hkLXVwOyBnZW5lcmF0ZWQpCj4gwqDCoMKgwqAgQWN0aXZlOiBmYWlsZWQgKFJlc3Vs
dDogZXhpdC1jb2RlKSBzaW5jZSBTdW4gMjAyMi0wMy0wNiAwOTo0NDowNyBQU1Q7IDQ4bXMgYWdv
Cj4gwqDCoMKgwqDCoMKgIERvY3M6IG1hbjpzeXN0ZW1kLXN5c3YtZ2VuZXJhdG9yKDgpCj4gwqDC
oMKgIFByb2Nlc3M6IDI5MDM4MTQgRXhlY1N0YXJ0PS9ldGMvaW5pdC5kL3NwZWVjaGQtdXAgc3Rh
cnQgKGNvZGU9ZXhpdGVkLAo+IHN0YXR1cz0xL0ZBSUxVUkUpCj4gwqDCoMKgwqDCoMKgwqAgQ1BV
OiAyN21zCj4gCj4gTWFyIDA2IDA5OjQ0OjA1IGNoaW1lIHNwZWVjaGQtdXBbMjkwMzgxNF06IFN0
YXJ0aW5nIEludGVyZmFjZSBiZXR3ZWVuIHNwZWFrdXAKPiBhbmQgc3BlZWNoLWRpc3BhdGNoZXIg
OiBzcGVlY2hkLXVwCj4gTWFyIDA2IDA5OjQ0OjA1IGNoaW1lIHNwZWVjaGQtdXBbMjkwMzgxOV06
IFtTdW4gTWFywqAgNiAwOTo0NDowNSAyMDIyXSBzcGVlY2hkOgo+IENvbmZpZ3VyYXRpb24gaGFz
IGJlZW4gcmVhZCBmcm9tICIvZXRjL3NwZWVjaGQtdXAuY29uZiIKPiBNYXIgMDYgMDk6NDQ6MDUg
Y2hpbWUgc3BlZWNoZC11cFsyOTAzODE0XTogU3RhcnRpbmcgc3BlZWNoZC11cC4uLgo+IE1hciAw
NiAwOTo0NDowNSBjaGltZSBzcGVlY2hkLXVwWzI5MDM4MTRdOiBUbyB3b3JrLCBzcGVlY2hkLXVw
IG5lZWRzIHNwZWFrdXAgYW5kCj4gc3BlYWt1cF9zb2Z0IG1vZHVsZXMuCj4gTWFyIDA2IDA5OjQ0
OjA1IGNoaW1lIHNwZWVjaGQtdXBbMjkwMzgxNF06IFRoZXkgYXJlIGxvYWRlZCBhdXRvbWF0aWNh
bGx5LiBJZiB5b3UKPiBkb24ndCB3YW50LCB0eXBlCj4gTWFyIDA2IDA5OjQ0OjA1IGNoaW1lIHNw
ZWVjaGQtdXBbMjkwMzgxNF06IHJtbW9kIHNwZWFrdXAgc3BlYWt1cF9zb2Z0Cj4gTWFyIDA2IDA5
OjQ0OjA3IGNoaW1lIHNwZWVjaGQtdXBbMjkwMzkzMV06wqAgZmFpbGVkIQo+IE1hciAwNiAwOTo0
NDowNyBjaGltZSBzeXN0ZW1kWzFdOiBzcGVlY2hkLXVwLnNlcnZpY2U6IENvbnRyb2wgcHJvY2Vz
cyBleGl0ZWQsCj4gY29kZT1leGl0ZWQsIHN0YXR1cz0xL0ZBSUxVUkUKPiBNYXIgMDYgMDk6NDQ6
MDcgY2hpbWUgc3lzdGVtZFsxXTogc3BlZWNoZC11cC5zZXJ2aWNlOiBGYWlsZWQgd2l0aCByZXN1
bHQKPiAnZXhpdC1jb2RlJy4KPiBNYXIgMDYgMDk6NDQ6MDcgY2hpbWUgc3lzdGVtZFsxXTogRmFp
bGVkIHRvIHN0YXJ0IExTQjogSW50ZXJmYWNlIGJldHdlZW4gc3BlYWt1cAo+IGFuZCBzcGVlY2gt
ZGlzcGF0Y2hlci4KPiBkcGtnOiBlcnJvciBwcm9jZXNzaW5nIHBhY2thZ2Ugc3BlZWNoZC11cCAo
LS1jb25maWd1cmUpOgo+IMKgaW5zdGFsbGVkIHNwZWVjaGQtdXAgcGFja2FnZSBwb3N0LWluc3Rh
bGxhdGlvbiBzY3JpcHQgc3VicHJvY2VzcyByZXR1cm5lZCBlcnJvcgo+IGV4aXQgc3RhdHVzIDEK
PiBFcnJvcnMgd2VyZSBlbmNvdW50ZXJlZCB3aGlsZSBwcm9jZXNzaW5nOgo+IMKgc3BlZWNoZC11
cAo+IEU6IFN1Yi1wcm9jZXNzIC91c3IvYmluL2Rwa2cgcmV0dXJuZWQgYW4gZXJyb3IgY29kZSAo
MSkKPiBUaGFua3MgaW4gYWR2YW5jZQo+IENoaW1lCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

