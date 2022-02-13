Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 795574B3BA7
	for <lists+blinux-list@lfdr.de>; Sun, 13 Feb 2022 15:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644761504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zL+U7UOhli0CY8XwEDHURJV9KZVUoX4ANn3lJrPPh08=;
	b=Xv8iH0UbZt3SbO9T8OzVzm5/wOlIygyvYuXQUp1vhtwdWBOo78kwP/keEsKW+ovalBH0gF
	2M/caDHVV514x+dv0IeZvUXbjnM23q6RHLhCVRBxF1El6baZjPFtWo39zVPw0jOU6pNutF
	GZu9YrddhM9s/6qpJvc2XYjbyB1imNc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-yT7w9j94MVKyWuwUup1hJg-1; Sun, 13 Feb 2022 09:11:39 -0500
X-MC-Unique: yT7w9j94MVKyWuwUup1hJg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C96B51808320;
	Sun, 13 Feb 2022 14:11:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18AEF7C141;
	Sun, 13 Feb 2022 14:11:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 438944BB7C;
	Sun, 13 Feb 2022 14:11:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21DE45sx027912 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Feb 2022 09:04:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 83F20492CA8; Sun, 13 Feb 2022 14:04:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FAB1492CA4
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 14:04:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66CEF101CC63
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 14:04:05 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-270-rrGhNbbiOFaGjuC2XznhaA-1; Sun, 13 Feb 2022 09:04:02 -0500
X-MC-Unique: rrGhNbbiOFaGjuC2XznhaA-1
Received: by mail-pf1-f180.google.com with SMTP id i30so24730918pfk.8
	for <Blinux-list@redhat.com>; Sun, 13 Feb 2022 06:04:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=+V082vqSCqx4RZzSJ2QiyTcC5VB9ElBkKMSY6/y1Bjw=;
	b=O1rk6nnY9/9NT6zFlQqumhExwA6hrmOJ/i2S3hvHblQ8HPfHMkW0F5jCfLo1buctrz
	z1W/1kxieVRvUZynaz2nz+CgujgwqiTFm5cT3isnv37gS6VJiNPHE2zGGKjnFeDCsVpx
	gwAgtFXqZCBio9kk/lY3ajWdKE+EMpJJa3uIhmMqHcyXlMm9y7YRJ02CyOt1OVxojVEH
	A0U7dRu1Vr0dCg5gY6hLCvXxkdZO4/LWbEkSKHSqcluO63MnnNJ22pI/OqNDqWzOiOIl
	t/lEL9DofKQEyE7zkzfO3rTgpBUs4dMd1ymCRYEx65S6TBfxGIWMKSRqD4aN9PBlryYx
	5sqA==
X-Gm-Message-State: AOAM533A7JOA0mHa4TKN202KqNtub1Mp7uuoJdISbzRnYi4EozUhY93k
	B/syLauZFI0LUTCuK5T0s2m3XfQJzZQ=
X-Google-Smtp-Source: ABdhPJwCxejUtbxt3nOUE74uFqmlO407fUIGpg196CU0JMysyW15YSNwZRS2klHgxXN10Su9QE/dlg==
X-Received: by 2002:aa7:9576:: with SMTP id x22mr10331805pfq.56.1644761040692; 
	Sun, 13 Feb 2022 06:04:00 -0800 (PST)
Received: from [192.168.1.107] ([103.121.18.92])
	by smtp.gmail.com with ESMTPSA id
	oo9sm7816529pjb.10.2022.02.13.06.03.59 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 13 Feb 2022 06:04:00 -0800 (PST)
Message-ID: <51cd92ef-5223-1114-3b18-b30c3182a118@gmail.com>
Date: Sun, 13 Feb 2022 21:03:57 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui STS model data
To: Blind Linux <Blinux-list@redhat.com>
References: <60d78e73-30de-c36a-482c-8ed70596bee3@gmail.com>
In-Reply-To: <60d78e73-30de-c36a-482c-8ed70596bee3@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

QXBwYXJlbnRseSBJIG5lZWQgdG8gbG9vayBhIGJpdCBoYXJkZXLCoCA6KQoKCkkgZmluZCB3b3Jr
aW5nwqAgaW5zdHJ1Y3Rpb24gaGVyZQoKaHR0cHM6Ly9wZXRld2FyZGVuLmNvbS8yMDIxLzEyLzI3
L2hvdy10by1nZXQtc3RhcnRlZC13aXRoLWNvcXVpcy1vcGVuLXNvdXJjZS1vbi1kZXZpY2Utc3Bl
ZWNoLXRvLXRleHQtdG9vbC8jY29udGVudAoKQW55d2F5IHRoZXNlIFNUUyBpcyBsb29raW5nIGF3
ZXNvbWUuLgoKUmVnYXJkcwpPbiAyLzEzLzIyIDIwOjEwLCBFZGhvYXJpIFNldGl5b3NvIHdyb3Rl
Ogo+IEhpIGxpc3QsCj4KPgo+IEkgd2FudCB0byBleHBlcmltZW50IHdpdGggQ29xdWkgU1RTIGFu
ZCBuZWVkIHNvbWUgYWR2aWNlLgo+Cj4gSSBkb3dubG9hZCBzYW1wbGUgY29kZSBmcm9tCj4KPiAt
LSBodHRwczovL2dpdGh1Yi5jb20vY29xdWktYWkvU1RULWV4YW1wbGVzCj4KPiBGaXJzdCBJIHRy
aWVkIHRoZSBweXRob24gbWljX21pY192YWRfc3RyZWFtaW5nLyBidXQgd2hlbiBJIHJhbiBpdCBJ
J3ZlIAo+IGxvc3QgYWxsIGF1ZGlvIGFuZCBjb250cm9sLiBJIGhhZCB0byBnbyB0byB0dHkxIGFu
ZCByZWJvb3QgbXkgc3lzdGVtLgo+IEFuZCB0aGVuIHRyaWVkIHRoZSBub2RlanNfbWljX3ZhZF9z
dHJlYW1pbmcvCj4KPiBJdCBhc2tzIGZvciBtb2RlbCBkYXRhIHdoaWNoIEkgdHJ5IHRvIGZldGNo
IGZyb20KPiBodHRwczovL2NvcXVpLmFpL2VuZ2xpc2gvY29xdWkvdjEuMC4wLWRpZ2l0cwo+Cj4g
SSBhbHJlYWR5IHVzZSBib3RoIG15IGVtYWlsIGFkZHJlc3MgYW5kIHN0aWxsIGdvdCBub3RoaW5n
IGluIG15IGluYm94Lgo+Cj4gQ2FuIGFueW9uZSBjYW4gc2hlZCBsaWdodCBvbiB3aGF0IHRvIGRv
Pwo+IEknZCBhcHByZWNpYXRlIGFueSBoZWxwLgo+Cj4gQmVzdCBSZWdhcmRzCj4KPgo+IEVkaG9h
cmkgU2V0aXlvc28KPgotLSAKRWRob2FyaSBTZXRpeW9zbwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

