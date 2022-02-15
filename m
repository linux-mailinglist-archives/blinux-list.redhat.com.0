Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 509E94B74EC
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 21:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644955424;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qfr+EgdRFPywqeiid/3jZhIwiTFaGW9eZB7XI3ed5Wo=;
	b=crJaDWv55sU4DKvnZo47sw9twfhbpVd3WJLVKcbsQiBMpDUDBwscan6pJFrJ6MfH1yaSq5
	NEwDM94DH8oYshXo96DdZLS4IMjVdQBHXSMn5N7lyO0N/dGgALw0nfdloYVl3NwLnhu8iW
	cC3azxHIXyjJG3I681vNU+fK9/oqqGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-274-1h278dZzMb6QaRnIO721gg-1; Tue, 15 Feb 2022 15:03:35 -0500
X-MC-Unique: 1h278dZzMb6QaRnIO721gg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9D581091DA1;
	Tue, 15 Feb 2022 20:03:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8524101E594;
	Tue, 15 Feb 2022 20:03:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF9C04CA93;
	Tue, 15 Feb 2022 20:03:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FK3QJI003684 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 15:03:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 65783401E2D; Tue, 15 Feb 2022 20:03:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6148B5361FE
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:03:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46BBF185A79C
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 20:03:26 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-373-C7I5kOedMf6X4IolUsEgVA-1; Tue, 15 Feb 2022 15:03:24 -0500
X-MC-Unique: C7I5kOedMf6X4IolUsEgVA-1
Received: by mail-qt1-f172.google.com with SMTP id r9so8518516qta.1
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 12:03:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=NPw7vpE63/TW/yDdhxx9Ei3Yg1OkXUZ/lvGQ3Kzl/A8=;
	b=CuuTLlYOj8BQ+p7S+YsttM09ivVCPa4jh6q+ed5nZxJuA86Nef45Lb2rNKBrpb7qgs
	uiNkIYhFkjIWdRUW339sV7zc+b5J9xJyl82rjnKwyEjemGsgEd1/PK2o1K4X329nYP7+
	GxWFQNeDJnkQdHkt8VRIorVBjevv4AWtW4qDNh/KD3yJvPLstwvLdW4V54AAs4y05RyO
	+HmTpqRXlrL3E0o08XzA2XoPjFp6vw1SVcIvhYdslGdR7/5/MUF9Fg3sOIfR/S8DPzVh
	3c+d7gh8BCDk4OGEoZKBTVKSgnWKaUKHhFS3iwnuw3KOr3I/VNafcxizIizwQj8i1C+c
	XrUA==
X-Gm-Message-State: AOAM531Grhd1Jd0qDxJiDw4qzW5B5gwTKJNtf1G2JYw1YnGX0BTqS8iU
	ybsrA2E8aElXGUfih5VJukrEBTJ9qtrOHQ==
X-Google-Smtp-Source: ABdhPJzBccu1/B/09XWwgPKlfKiWn/8N8NUqHCW0H5znGqaJuykuLh4H/JBcxhhT30LsPN4+Hxju2A==
X-Received: by 2002:a05:622a:188f:: with SMTP id
	v15mr577764qtc.525.1644955403782; 
	Tue, 15 Feb 2022 12:03:23 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:7467:d1fd:59b:2e92?
	([2601:192:4c80:1420:7467:d1fd:59b:2e92])
	by smtp.gmail.com with ESMTPSA id o5sm1554994qtp.48.2022.02.15.12.03.23
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 15 Feb 2022 12:03:23 -0800 (PST)
Message-ID: <de8988a5-139d-bb9b-5e95-1b1346611b91@gmail.com>
Date: Tue, 15 Feb 2022 15:03:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
	<B3A425BD-7A5D-4FA5-BB1D-9EEC8BC0C18D@gmail.com>
In-Reply-To: <B3A425BD-7A5D-4FA5-BB1D-9EEC8BC0C18D@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBqdXN0IGRpZCB0d28gaW5zdGFhbGxhdGlvbnMgb2YgdGhlIHVwLWNvbWluZyBVYnVudHUgTFRT
LCB3aXRob3V0IApzaWdodGVkIGhlbHAuwqAgT25lIGhhcyB0byBsb2cgb3V0LCB0aGVuIGJhY2sg
aW4sIGFzIHRoZSBsaXZlIHVzZXIsIGFuZCAKdGhlIGluc3RhbGxlciBpcyBhY2Nlc3NpYmxlLsKg
IEkgYWdyZWUsIG9uZSBzaG91bGRuJ3QgaGF2ZSB0byBkbyAKd29ya2Fyb3VuZHMgbGlrZSB0aGlz
LCBqdXN0IHRvIGdldCB0aGUgdGhpbmcgaW5zdGFsbGVkLCBidXQsIEl0IGNhbiBiZSAKZG9uZS7C
oCBBbm90aGVyIG5vdGUgcmU6wqAgVWJ1bnR1LU1hdGU6IHRoZSBsb2dpbiBzY3JlZW4gaXMgc3Rp
bGwgCmluYWNjZXNzaWJsZS7CoCBBcyBsb25nIGFzIEknbSB0aGUgb25seSB1c2VyLCBpdCdzIG5v
dCBhIGh1Z2UgcHJvYmxlbSwgCmJ1dCwgYXMgYmVmb3JlLCBpdCBzaG91bGRuJ3QgYmUgb25lLsKg
IFVidW50dSBHTk9NRSBoYXMgYSB0YWxraW5nIGxvZ2luIApzY3JlZW47IGl0IHVzZXMgZ2RtLCB3
aGlsZSB0aGUgTWF0ZSBzcGluIHVzZXMgbGlnaHRkbS4KCgotRGF2ZSBILgoKCgpPbiAyLzE1LzIy
IDE0OjU2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IFVidW50
dSwgYXMgZmFyIGFzIEkga25vdyBkaXNxdWFsaWZpZWQgdGhlbXNlbHZlcywgc2VlaW5nIHRoYXQg
eW91IGNhbm5vdCwgYXMgZmFyIGFzIEkga25vdyBpbnN0YWxsIDIxLjEwIHdpdGhvdXQgaGVscC4g
WWVzLCB0aGUgTFRTIHZlcnNpb24ncyBpbnN0YWxsZXIgaXMgc3RpbGwgcGVyZmVjdGx5IGZpbmUs
IHNvIHlvdSBjb3VsZCB0ZWNobmljYWxseSBjb3VudCB0aGF0IGFuZCBkaXN0cm9zIGJhc2VkIG9u
IHRoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

