Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DD309440C13
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 00:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635631916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GQGmemnHQu7bpc12n4lYFjYYnu/H7ii+EKpE2fDcgJI=;
	b=P7dzBGQJhryvdbP3KdLB3Ri530yjiUQxsdU/ppUFg1AUaRJJ6ePV+aaRmjcu6tA+gk/SqN
	Zh+9hudMyroXL8AWYJ+CoIUsz9NB0Cnq7D+OBeWE5icC/zrs9MC/xNiYMhMXSG+epHskYQ
	Xgji+cxulZfgW1fUz9KWFxbgeKaZTYQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-hmxiG_epNLycj4OSL244DA-1; Sat, 30 Oct 2021 18:11:53 -0400
X-MC-Unique: hmxiG_epNLycj4OSL244DA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7F312806689;
	Sat, 30 Oct 2021 22:11:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DAEC5D6CF;
	Sat, 30 Oct 2021 22:11:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15B1C4A704;
	Sat, 30 Oct 2021 22:11:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UM9hVb028464 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 18:09:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 05FE51121314; Sat, 30 Oct 2021 22:09:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00B261121315
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:09:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 216A680120D
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 22:09:40 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-478-8hk-P5-MPte0SHmMSrLN0A-1; Sat, 30 Oct 2021 18:09:38 -0400
X-MC-Unique: 8hk-P5-MPte0SHmMSrLN0A-1
Received: by mail-qt1-f181.google.com with SMTP id h14so11777742qtb.3
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/zNk20dUjBcMu6eGhZfZZVZxuan72zA31ndPjabdSio=;
	b=4SdEAElkQzrBGqAyGL1Dh/u6JrXNR0ze49igbenp7eppI3md0i9/O3MtvxJTxa0t2c
	I/9kq1uOTsQAZ+DwF5FriZgmaDdGPTi3KA6V0Koh3ts6Me3PCy2bnpk0EOIfVDlHlP9X
	DCyG6hq+wROe8JslO/RT7tmit+tPfXNxOmDZZkmKB8U0WGU5fwWq+E6xZn89n6cA2w/g
	3Is6xXmKeeiHSrEzhTCutUrT4w0ZcFKkj3ZuQ4hGmltkhkRcwJFVYZ+4NM8TnVHOzJ/4
	BTo3TJxPgfRZtz+T0M7F8QW8lEetjXal8J/gK78/4eG5EF8KarUH1bhfdXGH9Ok3WuEg
	L9fg==
X-Gm-Message-State: AOAM532sav9T5CWWb+TURDJB8PC5DPi2sBlGGr5Fe57JIq/GwJv4XijQ
	6h3OEK1tb+OaWyCAlEaa3c/YchPOnquX5g==
X-Google-Smtp-Source: ABdhPJywFhWNGphavqtNgOmMoRYEzVHxy8oCmCVkmhutawUa9EbwCuOjFI9W2GuPmHBGXt1vTAh+ZA==
X-Received: by 2002:a05:622a:107:: with SMTP id
	u7mr10748680qtw.296.1635631777572; 
	Sat, 30 Oct 2021 15:09:37 -0700 (PDT)
Received: from ?IPv6:2601:152:4000:330:678f:195f:75ac:ea62?
	([2601:152:4000:330:678f:195f:75ac:ea62])
	by smtp.gmail.com with ESMTPSA id
	bs34sm6873046qkb.97.2021.10.30.15.09.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 15:09:37 -0700 (PDT)
Subject: Re: Accessible Coconut speech at startup
To: blinux-list@redhat.com
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
	<DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
	<alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
Message-ID: <578e1897-329a-e039-54cf-ca2869978df8@gmail.com>
Date: Sun, 31 Oct 2021 03:39:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIG1hbi4gVGhhdCB3b3Jrcy4gSSByZWFkIHRoZSBlbnRpcmUgbWFudWFsIGFuZCBJIGNv
dWxkIG5vdCBmaW5kIGEgCnNob3J0Y3V0IHRvIGRvIHRoYXQuCgpUaGFua3MgYSBtaWxsaW9uIGZv
ciB5b3VyIHBhdGllbmNlLgoKSWJyYWhpbQoKT24gMTAvMzEvMjEgMTowMCBBTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUcnkgZ2V0dGluZyBpbnRvIGEgdGVy
bWluYWwgYW5kIHJ1biBubXR1aS4gIFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIG1hbgo+IG5tdHVp
IGZpcnN0IHRob3VnaC4KPgo+Cj4gT24gU2F0LCAzMCBPY3QgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBIaQo+PiBJcyB0aGVyZSBhIHNob3J0Y3V0
IG9yIGEgaG90a2V5IHRvIHNob3cgdGhlIGxpc3Qgb2YgYXZhaWxhYmxlIHdpLWZpIG5ldHdvcmtz
IGluIGFjY2Vzc2libGUgY29jb251dD8gU28gZmFyIEkgY2FuIG9ubHkgZ2V0IGEgbGlzdCBvZiB3
aS1maSBuZXR3b3JrIGJ5IHByZXRlbmRpbmcgdG8gaW5zdGFsbCBjb2NvbnV0LiBXaGVuIGkgdHlw
ZSBuZXR3b3JrIGluIHRoZSBzZWFyY2ggaSBnZXQgb3B0aW9ucyBmb3Igc2V0dGluZyBwcm94eS4K
Pj4gVGhhbmtzIGEgbG90IGZvciB5b3VyIGhlbHAuCj4+IElicmFoaW0KPj4KPj4KPj4gU2VudCBm
cm9tIG15IGlQaG9uZQo+Pgo+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMToxNCBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pgo+Pj4g77u/U2NyZWVuIHJlYWRlciBzZXR0aW5ncwo+Pj4gSW5zZXJ0IHBsdXMgc3Bh
Y2UKPj4+Cj4+Pgo+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4KPj4+PiBPbiBPY3QgMjksIDIw
MjEsIGF0IDExOjA0IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGlu
dXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+IO+7v1RoYW5rcyBhIG1pbGxpb24u
IEkganVzdCBmaWd1cmVkIHdoYXQgSSB3YXMgZG9pbmcgd29ybmcuIEkganVzdCByZWFsaXplZCB0
aGF0IGhpdHRpbmcgYWx0LWYxIG9yIGFsdC1mMiBkb2VzIG5vdCB3b3JrIG9uIG15IGxhcHRvcC4g
SSBuZWVkZWQgdG8gcHVzaCB0aGUgZnVuY3Rpb24ga2V5IGFsb25nIHdpdGggdGhlIGFsdCBmMSBv
ciBmMiBmb3IgaXQgdG8gd29yay4gTm93IEkgY2FuIGFjY2VzcyB0aGUgbWVudXMganVzdCBmaW5l
Lgo+Pj4+Cj4+Pj4gSSBzdGlsbCBuZWVkIHRvIGZpZ3VyZSBvdXQgYSB3YXkgb2YgY2hhbmdpbmcg
dGhlIGRlZmF1bHQgc3BlZWNoIGVuZ2luZSwgYW5kIGEgd2F5IHRvIGhhdmUgaXQgZGlzcGxheSBm
b3JlaWduIGNoYXJhY3RlcnMgb24gdGhlIEJyYWlsbGUgZGlzcGxheS4gRm9yIGV4YW1wbGUsIFdo
ZW4gSSBkbyBhIHlvdXR1YmUgc2VhcmNoIGFuZCBnZXQgYSBoaXQgaW4gQXJhYmljIG9yIEhlYnJl
dyBpdCBkaXNwbGF5cyB0aGUgQXJhYmljIG9yIEhlYnJldyBjaGFyYWN0ZXJzIGFzIHF1ZXN0aW9u
IG1hcmtzLiBJIGFtIHN1cmUgdGhlcmUgaXMgYSB3YXkgb2YgZGVhbGluZyB3aXRoIHRoaXMuCj4+
Pj4KPj4+PiBpbiB0aGUgbmV4dCBzdGFnZSwgSSBuZWVkIHRvIGZpZ3VyZSBhIHNhZmUgd2F5IG9m
IGluc3RhbGxpbmcgaXQgYWxvbmdzaWRlIG15IHdpbmRvd3Mgd2l0aG91dCBzY3Jld2luZyB1ICAg
IHAgbXkgd2luZG93cyBvcHBlcmF0aW9uLgo+Pj4+Cj4+Pj4gVGhhbmtzIGEgbG90IGFnYWluIGZv
ciB5b3VyIGhlbHAuCj4+Pj4KPj4+PiBCeSB0aGUgd2F5IEkgYW0gbm93IHdyaXRpbmcgdGhpcyBl
bWFpbCB1c2luZyB0aGUgdGh1bmRlcmJpcmQgdGhhdCBjb21lcyB3aXRoIHRoZSBhY2Nlc3NpYmxl
IENvY29udXQKPj4+Pgo+Pj4+Pj4gT24gMTAvMzAvMjEgNjowNCBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gc3VwZXItdCBtYXkgZ2V0IHlvdSBhIHRl
cm1pbmFsIHdoaWNoIGdpdmVzIHlvdSBhIGNvbW1hbmQgbGluZS4gIFlvdSdsbAo+Pj4+PiBrbm93
IGlmIGEgJCBjb21lcyB1cCBhcyBhICBwcm9tcHQgb3IgYSAjIGNvbWVzIHVwLiAgRmFpbGluZyB0
aGF0IGFsdC0rZjIKPj4+Pj4gdGhlbiB0eXBlIG1hdGUtdGVybWluYWwgb3IgZ25vbWUtdGVybWlu
YWwgYW5kIGhpdCBlbnRlci4KPj4+Pj4KPj4+Pj4KPj4+Pj4+IE9uIEZyaSwgMjkgT2N0IDIwMjEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4g
VGhhbmtzIGEgbWlsbGlvbiBmb3IgeW91ciBoZWxwLiBJIHRyaWVkIHlvdXIgIHN1Z2dlc3Rpb25z
IHRvIG5vIGF2YWlsLiBIb3dldmVyLCBzb21ldGhpbmcgc3RyYW5nZSBoYXBwZW5lZCwgd2hlbiBJ
IGNvbm5lY3RlZCBteSBicmFpbGxlIGRpc3BsYXkgaXQgY29ubmVjdGVkIHRvIGFjY2Vzc2libGUg
Y29jb251dCByaWdodCBhd2F5LiBJIHdhcyBhYmxlIHRvIGJyb3dzZSB0aGUgbWVudXMgYW5kIGNv
bm5lY3QgdG8gdGhlIGludGVybmV0LiBEdXJpbmcgbXkgYnJvd3NpbmcgdGhlIHNwZWVjaCBjYW1l
IG9uLgo+Pj4+Pj4gSSBoYXZlIHR3byBxdWVzdGlvbnMsIGhvdyBjYW4gSSBnZXQgYSBjb21tYW5k
IGxpbmUgcHJvbXB0PyBNeSBzZWNvbmQgcXVlc3Rpb24gaXMsIHdoYXQgaXMgdGhlIGNvbW1hbmQg
dG8gdHVybiBvZmYgdGhlIGNvbXB1dGVyPyBBbHQgZjQgZGlkIG5vdCB0YWtlIG1lIHRoZXJlLgo+
Pj4+Pj4gQ2hlZXJzLAo+Pj4+Pj4gSWJyYWhpbQo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBTZW50IGZy
b20gbXkgaVBob25lCj4+Pj4+Pgo+Pj4+Pj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTo1NiBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+PiDvu79QcmVzcyBhbHQgcGx1cyBGMS4KPj4+Pj4+PiBE
byB5b3UgaGVhciBzcGVlY2g/Cj4+Pj4+Pj4gSWYgbm90LCBwcmVzcyBlc2NhcGUuCj4+Pj4+Pj4g
UHJlc3MgYWx0IHBsdXMgRjIKPj4+Pj4+PiBUeXBlCj4+Pj4+Pj4gb3JjYQo+Pj4+Pj4+IFByZXNz
IGVudGVyLgo+Pj4+Pj4+IFRoaXMgc2hvdWxkIGZpeCBpdC4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+
Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIE9jdCAyOSwgMjAyMSwg
YXQgMToyNSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IO+7v0lzIHRoZXJlIGEgc3Rl
cCBieSBzdGVwIHR1dG9yaWFsIG9uIGhvdyB0byBzdGFydD8KPj4+Pj4+Pj4gSSBkb3dubG9hZGVk
IHRoZSBhY2Nlc3NpYmxlIGNvY29udXQgaXNvIGFuZCBwdXQgaXQgb24gYSBib290YWJsZSB1c2Ig
ZHJpdmUuIEkgd2FzIGFibGUgdG8gYm9vdCB0aGUgbWFjaGluZSBmcm9tIHRoZSB1c2IsIGJ1dCB0
aGVyZSB3YXMgbm8gc3BlZWNoIHRvIGd1aWRlIG1lLiBJIHdhcyBhYmxlIHRvIGNvbmZpcm0gdGhh
dCBJIGluZGVlZCBib290ZWQgZnJvbSB1c2Igd2l0aCBhY2Nlc3NpYmxlIGNvY29udXQgYnkgdXNp
bmcgbXkgaVBob25lIGNhbWVyYS4gSSBoYXZlIG5vIGlkZWEgaG93IHRvIGdldCB0aGUgc3BlZWNo
IGdvaW5nLiBTbyBwbGVhc2UgaWYgeW91IGhhdmUgYSB0dXRvcmlhbCwgc2VuZCBpdCBteSB3YXku
Cj4+Pj4+Pj4+IElicmFoaW0KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2VudCBmcm9tIG15IGlQaG9uZQo+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTA6MjkgQU0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3Rl
Ogo+Pj4+Pj4+Pj4g77u/SGVsbG8sCj4+Pj4+Pj4+PiBXaGVuIHVzaW5nIHRoZSBsaXZlIENELCBU
aGUgc2NyZWVucmVhZGVyIHN0YXJ0ZWQgYXQgYm9vdC4KPj4+Pj4+Pj4+IEJ1dCBhICBhZnRlciBJ
IGluc3RhbGxlZCBpdCwgSSBnZXQgbm8gc2NyZWVucmVhZGVyIGF0IHN0YXJ0dXAuCj4+Pj4+Pj4+
PiBBbGwgc2V0dGluZ3MgYXMgZmFyIGFzIEkga25vdyBhcmUgY29ycmVjdC4KPj4+Pj4+Pj4+IFRo
ZSBvbmx5IHdheSB0byBnZXQgc3BlZWNoIGlzIHRvIGdvIHRvIHRoZSBydW4gd2luZG93IHdpdGgK
Pj4+Pj4+Pj4+IEFsdCtGMgo+Pj4+Pj4+Pj4gVGhlbiB0eXBlCj4+Pj4+Pj4+PiBvcmNhCj4+Pj4+
Pj4+PiBBbmQgcHJlc3MgZW50ZXIuCj4+Pj4+Pj4+PiBJIHJlaW5zdGFsbGVkIGxpbnV4IGFuZCBn
b3QgdGhlIHNhbWUgcmVzdWx0Lgo+Pj4+Pj4+Pj4gQXMgSSB3YXMgZG9pbmcgdGhlIGluc3RhbGws
IEkgY2hlY2tlZCB0aGUgYm94IHRvIGdldCB1cGRhdGVzIGR1cmluZyB0aGUgaW5zdGFsbC4gQ291
bGQgdGhpcyBiZSB0aGUgY2F1c2Ugb2YgbXkgdHJvdWJsZT8KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBU
aGFua3MsCj4+Pj4+Pj4+PiBSb2IKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

