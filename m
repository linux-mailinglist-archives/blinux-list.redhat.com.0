Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1CF841D06A3
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 07:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589348819;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z68q5F9SGmPamDzll1AXGGz0gsTKQhIVTwyz+lWdwpE=;
	b=CunUCO9gqJC5kzGA+BwkPinIxcOCH3oJ2uwwc7ZUOC7bGn4uZtY98/AqmN5tkQG+Vym3Dd
	sOBeEUXZ5FZZC219wqOyrZgw3UAqzumcPLkuaMWXJqyTToLxzLD7gWMXDlRaLTejHs0fny
	X+1coYU+3hSkybVnWvZybC1X2DS7DNo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-J3EVka__OpuRIma2xhDOZQ-1; Wed, 13 May 2020 01:46:57 -0400
X-MC-Unique: J3EVka__OpuRIma2xhDOZQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A29ED107ACF4;
	Wed, 13 May 2020 05:46:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC8C770947;
	Wed, 13 May 2020 05:46:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B1DB1809542;
	Wed, 13 May 2020 05:46:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04D5kfej021034 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 01:46:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1BF02100B8C1; Wed, 13 May 2020 05:46:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17C97100B8BE
	for <blinux-list@redhat.com>; Wed, 13 May 2020 05:46:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9E11485A5B0
	for <blinux-list@redhat.com>; Wed, 13 May 2020 05:46:38 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-61-zwM4f5kNOOSvyIWqSk2kYQ-1; Wed, 13 May 2020 01:46:35 -0400
X-MC-Unique: zwM4f5kNOOSvyIWqSk2kYQ-1
Received: by mail-pg1-f176.google.com with SMTP id f6so7293680pgm.1
	for <blinux-list@redhat.com>; Tue, 12 May 2020 22:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=VRDLRhKROYrBBQDmY/wkMmDCp6bE9Q+sIOAtKj/XZmE=;
	b=M0XU/aLZIDoGMpWMeEHYNmOLK7Nf0SAOh79jvJ1HoFuaCwNOT1Dt6h/a04KC699Hsm
	5JljOEQEWIJbfVWokmLH9w+5iBjbrAOHQEZuw++fd9jO1dyBgivJdOxhrOBrdvbZs6VR
	VfsKGV1hvWrSaZEInBnOP5+3M/wMHevaEOPSbKRQNgQM2E1WwsgGMDu2WMXlqEt+DS+3
	xwxwVM16BVfiDJX3N7cVrfKLyEQ2VMGqE0SrVZvSVG7sh0DQ+v7DCUjQ03LJyXZUoZpC
	8NC/pkH/JYWONnuEyVxUhxgunw0T7yoBC9+LBxEqrloC+bJsNbgJNyr8bKxPXLf2ZPQq
	pDgA==
X-Gm-Message-State: AGi0PuZ6V9hOoY8c6hTUBhrw3B6LgsfrFAJ6aIiPbxfyDdKHylJdJkfb
	l9L7C+nmpZ9yo6iSM8EbOYoVFIsx
X-Google-Smtp-Source: APiQypKVsU/fcD6do9Uae5+EAVpjIE/lIj90og76Hp9lmhvFDKrFhvQvNNrhEmQcrBtAwW9Ufuzucg==
X-Received: by 2002:a62:1b84:: with SMTP id
	b126mr24784135pfb.123.1589348794495; 
	Tue, 12 May 2020 22:46:34 -0700 (PDT)
Received: from [192.168.0.165] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	k2sm3647165pfd.108.2020.05.12.22.46.33 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2020 22:46:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: b s d and orca
Date: Tue, 12 May 2020 22:46:32 -0700
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
Message-Id: <A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 04D5kfej021034
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RG9u4oCZdCBjb3VudCBvbiBpdCBldmVyIGJlaW5nIHVzYWJsZSBvbiBPcGVuQlNELiBUaGVvLCBp
biBoaXMgaW5maW5pdGUgd2lzZG9tLCBoYXMgcHJldHR5IG11Y2ggYmxvd24gb2ZmIGFueSByZXF1
ZXN0cyBmb3IgYWNjZXNzaWJpbGl0eSBmb3IgdGhlIGJsaW5kIG9uIHRoYXQgcGxhdGZvcm0uIFlv
dSBtaWdodCBoYXZlIGJldHRlciBsdWNrIG9uIG9uZSBvZiB0aGUgb3RoZXIgQlNE4oCZcyAobGlr
ZSBGcmVlQlNEKQoKV2hhdCBJIHdvdWxkbuKAmXQgZ2l2ZSB0byBnbyB1cCB0byBDYW5hZGEsIGtu
b2NrIG9uIFRoZW/igJlzIGZyb250IGRvb3IgYW5kIHNob3ZlIGEgbGFwdG9wIHdpdGggT3BlbkJT
RCBpbnRvIGhpcyBoYW5kcyBhbmQgdGVsbCBoaW0gdG8gZml4IGl0LiBJdCB3b3VsZCBiZSBhIGxp
dHRsZSBoYXJkIHRvIGlnbm9yZSBhdCB0aGF0IHBvaW50LCBkb27igJl0IHlvdSB0aGluaz8KCi1F
cmljCgoKPiBPbiBNYXkgMTIsIDIwMjAsIGF0IDc6NDIgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IEFueW9u
ZSBrbm93IG9mIGEgZGlzdHJpYnV0aW9uIG9mIGIgcyBkIHdpdGggb3JjYSBpbiBpdHMgaW5zdGFs
bGVyPwo+IEkgaGFkIG5ldmVyIHVzZWQgYiBzIGQgYmVmb3JlLCBidXQgdGhvdWdodCBvZiBnaXZp
bmcgaXQgYSB0cnkuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cu
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

