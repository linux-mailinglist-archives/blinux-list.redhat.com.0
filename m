Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 3624F2D0B7
	for <lists+blinux-list@lfdr.de>; Tue, 28 May 2019 22:53:56 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id EC5542B2CF;
	Tue, 28 May 2019 20:53:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95D611972A;
	Tue, 28 May 2019 20:53:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B72321833002;
	Tue, 28 May 2019 20:53:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4SKrhIr016728 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 28 May 2019 16:53:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 173081F8; Tue, 28 May 2019 20:53:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx06.extmail.prod.ext.phx2.redhat.com
	[10.5.110.30])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1071D600C1
	for <blinux-list@redhat.com>; Tue, 28 May 2019 20:53:39 +0000 (UTC)
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 61CC23E2B9
	for <blinux-list@redhat.com>; Tue, 28 May 2019 20:53:38 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id u199so220098oie.5
	for <blinux-list@redhat.com>; Tue, 28 May 2019 13:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=oauhue67G4wi1YdnVur8FZpNG6j7AzSg/kRlAeDm8tY=;
	b=Spor0eaOmGzcjbA4eCTX1sMroR2/Hu8VdieS1eFdrCnQuZMqJud2DwiXXHXGJETY2Y
	yjz6Fo35tZONoTNq4Fa9AxSn5E0eIzHTNlaha/z7lRQFPZWozwgUNaDd4Rxl54RINHEw
	oJJM2YC/CqgVDWPcdDq+QT2BJjysRNtMyAgtpvc6JaZ6MkNsxVbAcULoRgI0+Trl9Lom
	E7FN7i6KwvDipMJGCKNNguycLALB9enlLv7uoY6Sx1RQhyJXHlBjV0wdpjJjChXOWTE0
	oWRSp/9BqqSns/tjZ1rKM36hi2x24JsqdohAUAXmKlmcSUKujzzWiIW7SLytDk2UOuPa
	Dl9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oauhue67G4wi1YdnVur8FZpNG6j7AzSg/kRlAeDm8tY=;
	b=IizCsKcO+F6nNzk5C79MF+GnXZt8RKHawCNX/csfg6AnDAdvrKYg8A7hViPcyjPZ1z
	VWlsYkLmRjPirpZnhdzvW52r0q2HWQ9MAmpQUhvmHvXclvDdvNEIJreArS1Efu7tQV24
	Hz1hi/dS+zeiFSnN/Bc16mVx4hnO6Hhx+d9YIpQhuB/iKXEhKbNUpBShWCd8btrZXnFI
	kNWgJ5A4ZS5lIKJb7mY+8w32exFGj3+YHtLY+pU5MeVUocKyMSVLr06Gjaj/ROJvH5nA
	OO3OTWK5OZ5DvE3/3kAiZ4fLM3atgIjeBF2RMd0wJsjv13EL/CCbTzpBAYwySvCkFE3h
	gc1g==
X-Gm-Message-State: APjAAAX5ahKpCOmX1wXFBrigaUEw3vQqGUkvghmxdmAoB/5YNaf98gKl
	K/erxZ1ADOvvcKxzrDrxCpjPM1yQ
X-Google-Smtp-Source: APXvYqzXCDwTN28OTdFFmNAsKVEAT/OG2mXhT7sFoZFM7PqVg61oB6iHAm5wfue9PKCCUoCCUbRUYQ==
X-Received: by 2002:aca:eb4a:: with SMTP id j71mr4128578oih.69.1559076817419; 
	Tue, 28 May 2019 13:53:37 -0700 (PDT)
Received: from ?IPv6:2600:1702:20f0:4420:cc3a:516c:7f23:f093?
	([2600:1702:20f0:4420:cc3a:516c:7f23:f093])
	by smtp.gmail.com with ESMTPSA id 41sm5594983otm.6.2019.05.28.13.53.36
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 May 2019 13:53:36 -0700 (PDT)
Subject: Re: Setting Orca to Laptop mode and navigating CrowdOx.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAO2sX32uqs-w1XPsn132sUfkyngzbG1VZsM3v4ehtd1C_S4L5A@mail.gmail.com>
Message-ID: <4fdb67fb-b05f-66f5-f5ca-2ecc81b953f7@gmail.com>
Date: Tue, 28 May 2019 16:53:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAO2sX32uqs-w1XPsn132sUfkyngzbG1VZsM3v4ehtd1C_S4L5A@mail.gmail.com>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.30]);
	Tue, 28 May 2019 20:53:38 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]);
	Tue, 28 May 2019 20:53:38 +0000 (UTC) for IP:'209.85.167.196'
	DOMAIN:'mail-oi1-f196.google.com' HELO:'mail-oi1-f196.google.com'
	FROM:'ilovecountrymusic483@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.167  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2, SPF_HELO_NONE,
	SPF_PASS) 209.85.167.196 mail-oi1-f196.google.com 209.85.167.196
	mail-oi1-f196.google.com <ilovecountrymusic483@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.30
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Tue, 28 May 2019 20:53:53 +0000 (UTC)

SGksCgoKVG8gZ2V0IGludG8gb3JjYSBzZXR0aW5ncyB5b3UgY2FuIGRvIHRoaXMgYnkgcHJlc3Mg
YXVsdCtmMiBhbmQgdHlwZSBvcmNhIAotcyBhbmQgdGhpcyBzaG91bGQgZG8gdGhlIHRyaWNrLsKg
IEhUSC4KCgpNYXR0aGV3CgoKCk9uIDUvMjgvMTkgMTowNSBQTSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBHb29kIEFmdGVybm9vbiwKPgo+IE9rYXksIHNvIEkn
dmUgbW9zdGx5IGJlZW4gZ2V0dGluZyBieSBvbmxpbmUgdXNpbmcgRmlyZWZveCB3aXRoIE9yY2EK
PiBhbmQgdXRpbHl6aW5nIHRoZSBmZWF0dXJlcyBvZiBPcmNhIHRoYXQgZG9uJ3QgcmVxdWlyZSB0
aGUgT3JjYQo+IG1vZGlmaWVyIGtleS4gVGhhdCBzYWlkLCBpdCdzIGJlY29taW5nIGluY3JlYXNp
bmdseSBvYnZpb3VzIHRoYXQgdGhlcmUKPiBhcmUgb2NjYXNpb25zIHdoZXJlIHNvbWUgb2YgT3Jj
YSdzIGFkdmFuY2VkIGZlYXR1cmVzIHdvdWxkIGJlIHVzZWZ1bAo+IGFuZCBzb21lIG9mIHRoZXNl
IHJlcXVpcmUgdGhlIHVzZSBvZiB0aGUgT3JjYSBtb2RpZmllciBrZXkuCj4KPiBQcm9ibGVtIGlz
LCBJJ20gb24gYSBkZXNrdG9wIG1hY2hpbmUsIGJ1dCBJJ20gdXNpbmcgYSBrZXlib2FyZCB0aGF0
J3MKPiBhIGJpdCBzbWFsbGVyIHRoYW4gZnVsbC1zaXplLCB3aXRoIG5vIG51bSBwYWQgYW5kIEkn
bSBub3Qgc3VyZSBpZiBpdAo+IGV2ZW4gaGFzIGFuIGluc2VydCBrZXkuIEkndmUgdHJpZWQgZWRp
dGluZwo+IH4vLmxvY2FsL3NoYXJlL29yY2EvdXNlcnByZWZzLmNvbmYgdG8gbWFrZSBjYXBzIGxv
Y2sgdGhlIE9yY2EgbW9kaWZpZXIKPiBrZXkgc28gSSBjYW4gYXQgbGVhc3QgcHVsbCB1cCB0aGUg
T3JjYSBjb25maWd1cmF0aW9uIHdpbmRvdyB0byBubwo+IGF2YWlsLgo+Cj4gQ2FuIGFueW9uZSB0
ZWxsIG1lIGhvdyB0byByZXNldCBPcmNhIHRvIGl0cyBkZWZhdWx0LCBsYXB0b3AKPiBjb25maWd1
cmF0aW9uIHdoZW4gSSBjYW4ndCBhY2Nlc3MgaXRzIGNvbmZpZ3VyYXRpb24gd2luZG93Pwo+Cj4g
QWxzbywgcGFydCBvZiB3aGF0IGhhcyBicm91Z2h0IHRoZSBhYm92ZSBpc3N1ZSB3aXRoIE9yY2Eg
dG8gYSBoZWFkIGlzCj4gdGhhdCB0d28gb2YgdGhlIEtpY2tzdGFydGVycyBJJ3ZlIGJhY2tlZCBh
cmUgY3VycmVudGx5IGluIHRoZSBQbGVkZ2UKPiBNYW5hZ2VyIHBoYXNlIGFuZCB1dGlseXppbmcg
Q3Jvd2RPeCBmb3IgdGhpcyBwdXJwb3NlLCBhbmQgQ3Jvd2RPeCBpcwo+IGN1cnJlbnRseSBwcm92
aW5nIHRvIGJlIG9uZSBvZiB0aGUgbW9zdCBpbmFjY2Vzc2libGUgd2ViIHNpdGVzIEkndmUKPiBj
b21lIGFjcm9zcyB0byBkYXRlKHRoZXJlIGFyZSBubyBidXR0b25zIG9yIGNsaWNrYWJsZXMgT3Jj
YSBjYW4KPiBkZXRlY3QsIGFuZCBhcHBhcmVudGx5IHdoYXQgeW91J3JlIHN1cHBvc2UgdG8gY2xp
Y2sgaXMgc2hvd2luZyB1cCBhcwo+IHBsYWluIHRleHQpLiBJJ3ZlIHNlbnQgYW4gZS1tYWlsIHRv
IENyb3dkT3ggc3VwcG9ydCh3aGljaCBJJ3ZlIGNvcGllZAo+IGFuZCBwYXN0ZWQgYmVsb3cgZm9y
IHJlZmVyZW5jZSksIGJ1dCBmaWd1cmVkIEkgbWlnaHQgYXMgd2VsbCBhc2sgaWYKPiBhbnlvbmUg
ZWxzZSBoYXMgaGFkIHRvIHVzZSB0aGVpciBzZXJ2aWNlIGluIHRoZSBwYXN0Lgo+Cj4gRG9pbmcg
YSBiaXQgb2YgZ29vZ2xpbmcsIGl0IHNvdW5kcyBsaWtlIE9yY2EncyBGbGF0IHJldmlldyBhbmQg
bW91c2UKPiBlbXVsYXRpb24gbWlnaHQgYmUgdXNlZnVsIGhlcmUsIGJ1dCBJIGNhbid0IGZpbmQg
aW5zdHJ1Y3Rpb25zIG9uCj4gYWN0aXZhdGluZyBmbGF0IHJldmlldyBhbmQgbW9zdCBvZiB0aGUg
bW91c2UgZW11bGF0aW9uIHJlcXVpcmVzIHRoZQo+IE9yY2EgbW9kaWZpZXIga2V5Lgo+Cj4gQW5k
IGlmIGFueW9uZSBrbm93cyBvZiBhIHNwZWNpZmljIG1haWxpbmcgbGlzdCBmb3IgT3JjYSBzdXBw
b3J0LCB3b3VsZAo+IHlvdSBtaW5kIGZvcndhcmRpbmcgc3VzY3JpcHRpb24gaW5zdHJ1Y3Rpb25z
Pwo+Cj4gVGhhbmtzIGluIGFkdmFuY2UuCj4KPiBHb29kIEFmdGVybm9vbiwKPgo+IFR3byBvZiB0
aGUgS2lja3N0YXJ0ZXIgcHJvamVjdHMgSSd2ZSBwbGVkZ2UgdG8gYXJlIGN1cnJlbnRseSBpbiB0
aGUKPiBwbGVkZ2UgbWFuYWdlciBwaGFzZSBhbmQgdXRpbHl6aW5nIHlvdXIgc2VydmljZSBmb3Ig
dGhpcyBwdXJwb3NlLgo+Cj4gRm9yIHJlZmVyZW5jZSwgdGhlIHR3byBwcm9qZWN0cyBhcmU6Cj4g
QW5pbWFsIEFkdmVudHVyZXM6IFRhbGVzIG9mIENhdHMgYW5kIENhdGFjb21icwo+IGFuZAo+IFJl
dHJvIERpY2UKPgo+IEkgYW0gaGF2aW5nIGlzc3VlcyB3aGljaCBwcmV2ZW50IG1lIGZyb20gcHJv
Z3Jlc3NpbmcgcGFzdCBsb2FkaW5nIHRoZQo+IGZpcnN0IHBhZ2Ugb2YgdGhlIHBsZWRnZSBtYW5h
Z2VyLCB3aGljaCBhcmUgbmVhcmx5IGlkZW50aWNhbCBhY3Jvc3MKPiB0aGUgdHdvIHN1cnZleXMg
YW5kIHdoaWNoIEkgc3VzcGVjdCBhcmUgbGlua2VkIHRvIG1lIGJlaW5nIGJsaW5kIGFuZAo+IHRo
dXMgcmVsaWFudCBvbiBrZXlib2FyZCBpbnB1dCBhbmQgc2NyZWVuIHJlYWRlciBvdXRwdXQgdG8g
b3BlcmF0ZSBhCj4gY29tcHV0ZXIuCj4KPiBGb3IgcmVmZXJlbmNlLCBteSBzb2Z0d2FyZSBjb25m
aWd1cmF0aW9uIGNvbnNpc3RzIG9mOgo+IE9TOiBEZWJpYW4tYmFzZWQgTGludXguCj4gV2ViIEJy
b3dzZXI6IEZpcmVmb3ggNjYuMC41Cj4gU2NyZWVuIHJlYWRlcjogT3JjYQo+Cj4gVG8gZGVzY3Jp
YmUgbXkgaXNzdWU6Cj4KPiA+RnJvbSBteSBwZXJzcGVjdGl2ZSwgdGhlIG51bWJlcmVkIHN0ZXBz
IGF0IHRoZSB0b3Agb2YgdGhlCj4gc2NyZWVuKFJld2FyZCwgRXh0cmFzLCBTaGlwcGluZywgQ29u
ZmlybSkgYXBwZWFyIGFzIGxpbmtzIGJ1dCBhcmUKPiBub24tZnVuY3Rpb25hbCwgd2hldGhlciBJ
IHRhYiB0byB0aGVtIGFuZCBwcmVzcyBlbnRlciBsaWtlIHdpdGggbW9zdAo+IGxpbmtzLCBvciBo
YXZlIG15IHNjcmVlbiByZWFkZXIgcHVsbCB1cCBhIGxpc3Qgb2YgbGlua3MgdG8gc2ltdWxhdGUg
YQo+IG1vdXNlIGNsaWNrLiBUaGUgY3JlYXRvciBvZiBvbmUgcHJvamVjdCBpbmZvcm1zIG1lIHRo
ZXNlIGxpbmtzIGFyZQo+IHN1cHBvc2UgdG8gYmUgcGxhaW4gdGV4dCB0aGF0IGNoYW5nZXMgY29s
b3IgYXMgZWFjaCBzdGVwIGlzIGNvbXBsZXRlZC4KPgo+IEJlc3QgSSBjYW4gdGVsbCwgdGhlIGJv
ZHkgb2YgdGhlIGluaXRpYWwgcGFnZSBvZiBib3RoIHN1cnZleXMgcHJvcGVybHkKPiBkaXNwbGF5
cyBteSBwbGVkZ2UgZnJvbSBLaWNrc3RhcnRlciwgYnV0IHdoZW4gSSBzY3JvbGwgZG93biB0byBj
b25maXJtCj4gYW5kIGNob29zZSBvcHRpb25zLCB3aGljaCBhcHBlYXJzIGFzIHRob3VnaCBpdCBz
aG91bGQgYmUgYSBsaW5rIG9yCj4gYnV0dG9uLCBhbmQgd2hpY2ggdGhlIGNyZWF0b3Igb2Ygb25l
IG9mIHRoZSBwcm9qZWN0cyBpbmZvcm1zIG1lIGlzCj4gc3VwcG9zZSB0byBiZSBhIGJ1dHRvbiwg
aXQgYXBwZWFycyBhcyBwbGFpbiB0ZXh0LiBGdXJ0aGVybW9yZSwgb24gdGhlCj4gUmV0cm8gRGlj
ZSBzdXJ2ZXksIHdoZXJlIHRoZXJlIGlzIHRoZSBvcHRpb24gdG8gY2hhbmdlIG15IHJld2FyZCB0
aWVyLAo+IHRoZSBzZWxlY3QgdGhpcyByZXdhcmQgdGV4dCBhcHBlYXJzIGFzIHBsYWluIHRleHQu
Cj4KPiBBbHNvLCBteSBzY3JlZW4gcmVhZGVyIGRldGVjdHMgbm8gYnV0dG9ucyBvciBKYXZhU2Ny
aXB0IGNsaWNrYWJsZXMgb24KPiB0aGUgcGFnZSwgb3IgYW55IG90aGVyIGZvcm0gZWxlbWVudHMs
IGFuZCB0aGUgb25seSBsaW5rcyBhc2lkZSBmcm9tCj4gdGhlIG9uZXMgZm9yIHRoZSBzdXJ2ZXkg
c3RlcHMgYXJlIHRoZSBjb250YWN0IGxpbmtzKHRoZSBjb250YWN0Cj4gQ3Jvd2RPeCBvcGVucyBh
IGZvcm0gbXkgc2NyZWVuIHJlYWRlciBkb2Vzbid0IGdldCBhbG9uZyB3aXRoIGVpdGhlciwKPiBh
bmQgdGhlIGNvbnRhY3QgY3JlYXRvciBqdXN0IHByb21wdHMgZm9yIGEgZS1tYWlsIHByb2dyYW0g
dG8gb3BlbiksCj4gYW5kIGxpbmtzIHJlbGF0ZWQgdG8geW91ciBjb29raWUgbm90aWNlLgo+Cj4g
SSBzdXNwZWN0IHRoZXJlIGFyZSBmdXJ0aGVyIGFjY2Vzc2liaWxpdHkgaXNzdWVzIHdpdGggeW91
ciBwbGVkZ2UKPiBtYW5hZ2VyLCBidXQgYXMgSSBhbSB1bmFibGUgdG8gZ2V0IHBhc3QgdGhpcyBm
aXJzdCBwYWdlLCBJIGNhbm5vdAo+IGNvbW1lbnQgb24gdGhlIHJlc3Qgb2YgaHRlIHByb2Nlc3Mu
Cj4KPiBBbnkgYXNzaXN0ZW5jZSB5b3UgY2FuIHByb3ZpZGUgaW4gcmVzb2x2aW5nIHRoaXMgaXNz
dWUgd291bGQgYmUKPiBncmVhdGx5IGFwcHJlY2lhdGVkLgo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
