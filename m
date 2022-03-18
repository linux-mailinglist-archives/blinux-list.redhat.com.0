Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D324DE3F9
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 23:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647642399;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/8HAJLuaWv21Ob+taB0N6nj2860ndnvstwjI6lFXqBw=;
	b=hRY2b1xVCk2VlpHxF1kQj1ZdEtlbl59tbMQuB0Htig58DEjvp+MZAMTH48MLXzNyNGtHfV
	pCSOtGaIxMrTGWMYgeooTs07Cq+Y9gg4dLqVshE9VEOvjTGk+VTumFNtu91SEYQbrvtwCA
	Go2pgs4cbuGlyE73LeXK0+/+o2RQRvY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-438-iYiMGgu9PgK-gA96jlxwiQ-1; Fri, 18 Mar 2022 18:26:36 -0400
X-MC-Unique: iYiMGgu9PgK-gA96jlxwiQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 437CA185A794;
	Fri, 18 Mar 2022 22:26:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1BCD8200B419;
	Fri, 18 Mar 2022 22:26:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 765CF1940379;
	Fri, 18 Mar 2022 22:26:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 18 Mar 2022 18:26:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: MP3 Tag editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
 <mailman.2790.1647555545.111203.blinux-list@redhat.com>
 <mailman.2906.1647556769.111202.blinux-list@redhat.com>
 <mailman.2934.1647568523.111202.blinux-list@redhat.com>
 <mailman.2943.1647572671.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.2943.1647572671.111202.blinux-list@redhat.com>
Message-ID: <mailman.2983.1647642386.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpJIGFtIGEgbGl0dGxlIGNvbmZ1c2VkLAoKRG8gSSBuZWVkIHRvIGJlIGluIHRoZSBBcnRp
c3QgZm9sZGVyPwoKVGhlIHN0cnVjdHVyZSBpcyBhcnRpc3QgZm9sZGVyIHNsYXNoIGFsYnVtIGZv
bGRlciBzbGFzaCBmaWxlcy4KCmtpZDMtY2xpPiB0b3RhZyAie2FydGlzdH0ve2FsYnVtfS97dGl0
bGV9IgoKZ2l2ZXMgbWUgZXJyb3IsCgphcnRpc3QgYWxidW0gdGl0bGUgZG9lcyBub3QgZXhpc3Qu
CgoKdGhhbmtzIGZvciB5b3VyIGhlbHAuCgpSb2IKCk9uIDMvMTcvMjIgMjI6NDIsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPiBIaSwKPgo+IEluIGFkZGl0aW9u
IHRvIHdoYXQgb3RoZXJzIGhhdmUgc3VnZ2VzdGVkLCB5b3UgY2FuIHRyeSBraWQzLiBXaGlsZSBJ
IGRvCj4gbm90IGxpa2UgaXRzIGdyYXBoaWNhbCBpbnRlcmZhY2UsIGl0cyBjb21tYW5kIGxpbmUg
dmVyc2lvbiBpbnZva2VkIHZpYQo+IHRoZSBraWQzLWNsaSBpcyB3aGF0IEkgbm9ybWFsbHkgdXNl
IHRvIHRhZyBteSBzb3VuZCBmaWxlcywgYmUgdGhleSBtcDMsCj4gbTRhLCBvZ2cgb3IgZXZlbiB3
bWEgZm9ybWF0cy4KPgo+Cj4gRm9yIGluc3RhbmNlLCBpbiBhIGRpcmVjdG9yeSB3aXRoIHBhdGhz
IGxpa2Ugfi9tdXNpYy9hcnRpc3QvYWxidW0sIHlvdSAKPiBjYW4gdGFnIHlvdXIgZmlsZXMKPiBs
aWtlIHRoaXM6Cj4KPiAkIGtpZDMtY2xpCj4gdG8gaW52b2tlwqAgaXQgaW4gaW50ZXJhY3RpdmUg
bW9kZS4gV2hlbiBpdCBjb21lcyB1cCwgdGhlIHByb21wdCB3aWxsIGJlCj4gc29tZXRoaW5nIGxp
a2UKPgo+IGtpZDM+Cj4KPiBUaGUgYXBwbGljYXRpb24gaGFzIGdvdCBmZXcgY29tbWFuZHMgeW91
IGNhbgo+IHJ1biBpbiB0aGlzIGludGVyYWN0aXZlIG1vZGUgc3VjaCBhcyBmcm9tdGFnIHRvIHJl
bmFtZSBmaWxlcyB1c2luZyB0aGVpcgo+IHRhZ3MsIHRvdGFnIHRvIHNhdmUgZmlsZXMgdXNpbmcg
c3RyaW5nIGZvcm1hdCBiYXNlZCBvbiBwYXRoIGFuZCBmaWxlCj4gbmFtZXMuIHRhZyAxIHRvIGNo
YW5nZSB0YWdzIHRvIHRoZSB0YWcgb25lIGZvcm1hdDsgdGFnIDIgdG8gc3dpdGNoIHRvCj4gdjIu
MyB0YWdzOyBzYXZlIHRvIHNhdmUgeW91ciB0YWdnZWQgZmlsZXM7IHNlbGVjdCBhbGwgdG8gc2Vs
ZWN0IGZpbGVzLAo+IGV0Yy4KPgo+Cj4gU28geW91IGNhbiBmb3JtYXQgYcKgIHN0cmluZyB3aGlj
aCB0ZWxscyBpdCB0aGUKPiBzdHJ1Y3R1cmUgb2YgeW91ciBmaWxlcy4KPiBZb3Ugc2VwYXJhdGUg
ZmlsZXMsIGRpcmVjdG9yaWVzIGFuZAo+IHN1YmRpcmVjdG9yaWVzIHVzaW5nIGEgc2xhc2guIFlv
dSB1c2UgaXRzIGJ1aWx0aW4gdGFnIHJlZmVyZW5jZXMgbGlrZQo+ICJ5ZWFyIiwgImFsYnVtYXJ0
aXN0IiwgImFydGlzdCIsICJnZW5yZSIsICJ0cmFjayIgInRpdGxlIi4gVGl0bGUgaXMKPiBzaW1w
bHkgdGhlIHRpdGxlIGZvciBhIGZpbGUsIHRyYWNrIGlzIHRoZSB0cmFjayBudW1iZXIsIGFuZCB0
aGUgcmVzdCBhcmUKPiBzZWxmIGV4cGxhbmF0b3J5LiBUaHVzLCBhIGZvbGRlciB3aXRoIHRoZXNl
IGZpbGVzOgo+Cj4gMSBDb3VudHJ5IEJveS5tcDMKPiAyIE1ha2UgbWUgYmVsaWV2ZS5tcDMKPiBl
dGMuCj4KPiBCeSBhbiBhcnRpc3QgY2FsbGVkIFJveSBGaXR6LCBpbiBhIGRpcmVjdG9yeSBzdHJ1
Y3R1cmUgc3VjaCBhcwo+ICJ+L011c2ljL1JveSBGaXR6LyIsIHlvdSB3b3VsZCBkbyBzb21ldGhp
bmcgbGlrZSB0aGlzOgo+Cj4gJCBraWQzLWNsaQo+Cj4ga2lkMy1jbGk+IHRvdGFnICJ7YXJ0aXN0
fS97dHJhY2t9IHt0aXRsZX0iCj4KPiBBbmQgYWxsIHlvdXIgbXAzIGZpbGVzIHdpbGwgYmUgdGFn
Z2VkLiBBZnRlciB0YWdnaW5nLCBiZWZvcmUgcXVpdHRpbmcsCj4geW91IGhhdmUgdG8gc2F2ZSB3
aXRoIHRoZSAic2F2ZSIgY29tbWFuZC4KPgo+Cj4gWW91IGNhbiBjaGVjayB0byBzZWUgd2hpY2gg
ZmlsZXMgY2hhbmdlZCBieSBzaW1wbHkgaXNzdWluZyBhICJscyIKPiBjb21tYW5kLiBBbnkgbW9k
aWZpZWQgZmlsZXMgd2lsbCBoYXZlIGHCoCBTdGFyIGJlZm9yZSBpdC4KPgo+IEhUSCwKPgo+Cj4g
SXNoZQo+Cj4gT24gVGh1LCBNYXIgMTcsIDIwMjIgYXQgMDk6NTXCoCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIAo+IDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4g
WW91IGNhbiB0cnkgc29tZXRoaW5nIGxpa2UgZGlzY29ncy5jb20gdG8gZmluZCB0cmFjayBpbmZv
cm1hdGlvbiBmb3IKPj4gZGlza3MgdGhhdCB5b3UgY291bGRuJ3QgZmluZCBpbiBjZGRiLCBhbHRo
b3VnaCB5b3Ugd2lsbCBuZWVkIGEKPj4gc3RhcnRpbmcgcGxhY2UsIGxpa2UgdGhlIENEIHRpdGxl
LCB0aGUgYXJ0aXN0LCBvciBtYXliZSBhIHNvbmcgdGl0bGUKPj4geW91IGtub3cgdGhhdCB5b3Ug
Y2FuIHBvcCBpbnRvIHRoZSBzZWFyY2ggYm94LiBZb3UgY2FuIHRoZW4gZmlsbCBpbgo+PiB0aGUg
aW5mb3JtYXRpb24gYW5kIHN1Ym1pdCBpdCB0byBjZGRiLCBJIHRoaW5rIGZyZWVkYiBhY3R1YWxs
eSwKPj4gYXNzdW1pbmcgeW91IHN0aWxsIGhhdmUgdGhlIENELiBJJ20gbm90IHN1cmUgdGhvdWdo
IHdoYXQgd2lsbCBzdWJtaXQKPj4gdG8gZnJlZWRiLCBhbmQgZ2V0dGluZyB0aGlzIGluZm9ybWF0
aW9uIG1heSBvciBtYXkgbm90IGJlIHVzZWZ1bCBmb3IKPj4gYXV0b21hdGljIHRhZ2dpbmcsIG1l
YW5pbmcgdGhhdCB5b3UgbWF5IG5lZWQgdG8gZmlsbCBpbiB5b3VyIHRhZ3MKPj4gbWFudWFsbHkg
YXMgd2VsbC4gS2VlcCBpbiBtaW5kIGFsc28gdGhhdCBkaXNjb2dzIGhhcyBsb3RzIG9mIGRpc2tz
IHlvdQo+PiBjYW5ub3QgZmluZCBpbiBmcmVlZGIsIGJ1dCBJIGhhdmUgZm91bmQgYXQgbGVhc3Qg
b25lIENEIG9uIGZyZWVkYiB0aGF0Cj4+IGRpc2NvZ3Mga25vd3Mgbm90aGluZyBhYm91dCwgc28g
ZGVwZW5kaW5nIG9uIHdoYXQgeW91IGhhdmUsIHlvdXIKPj4gbWlsZWFnZSBjYW4gY2VydGFpbmx5
IHZhcnkuCj4+Cj4+IH5LeWxlCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

