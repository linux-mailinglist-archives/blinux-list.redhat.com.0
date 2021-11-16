Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F334535C9
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 16:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637076533;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UGWPuNRrK7QSxx/rXcHrTDFkTaSmqRC8s21SUeJWMtk=;
	b=RPYyMWZylyuRqIyuKIeMdLYUCGmaZ1J61pK3dQ8kBFN56lm3dhnuZU12xBS/16ORW52R6t
	UwAY9JaXlgv5Hw3e5xyPJ4drX7cOoL2XVNjR/Tanrb2c6CHWc4N/86swW7miRYp/hSH1Sy
	MczZvu3ETFeGD0TR0uHzF7IlTOdnQC8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-70-myH3dCV2NPG2QxtKBg12_w-1; Tue, 16 Nov 2021 10:28:49 -0500
X-MC-Unique: myH3dCV2NPG2QxtKBg12_w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E35F1851721;
	Tue, 16 Nov 2021 15:28:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36E2057CD3;
	Tue, 16 Nov 2021 15:28:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8DE4F4EA2F;
	Tue, 16 Nov 2021 15:28:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AGFREqw012889 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 10:27:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CCC234010FE9; Tue, 16 Nov 2021 15:27:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C73C140CFD0A
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:27:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC41085A5BA
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 15:27:13 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-79-wk_gC5ZeNlKyOi014Sq-bg-1; Tue, 16 Nov 2021 10:27:10 -0500
X-MC-Unique: wk_gC5ZeNlKyOi014Sq-bg-1
Received: by mail-qk1-f173.google.com with SMTP id g28so16472018qkk.9
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 07:27:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Iy0iC3oAiUOCdjfYgg3gs+ztQWv2xzaIQwMfwa5zJyI=;
	b=Ir7+Lx/t7nfs+4abR/yTLHDFcA7Z5Lq2mKgKrHM+L5oUNrpYEBzF9nveeg6ZtJYvl9
	nJqfELQzpuJSUFbZp1mmnxULRPGTHr+tnUcGkNBeqProbb0jkJN6iXhmN80K66w7GqIK
	YMCBe9mvPkCzzY//XC8weiVJEL2SsCQyk9PwEWMyREkPf+Ll/tQkhAfDj1xhSXqW3v8p
	Kaj8xytCNPvMuXtKqpAWNZsTK2kS8h9VHjXNyDcLjJjGwZ9U7/6RLISSK2gEq0zIVLn3
	t136VZKE1tj2qxQAitXpnlGDoBoK2W5avdaaKTI9HuHtfHvTQQ2tDY0qZ4D2t+HuXjjf
	rJvg==
X-Gm-Message-State: AOAM531/eHtrwi9KvjpEPIyqC8Q6Pwls+C5pd/PTfbAVZ+fpd//js85w
	46VsXD1VncO7dlIdC7gHhWI6qa3I6Lt4uL9Y
X-Google-Smtp-Source: ABdhPJzvXUEBVmRU2EP67fSuBObKAtqlaBuRRYBhGWS4qQaGwymRrWGov7PogVT3Nyd4df7N1grMbQ==
X-Received: by 2002:a05:620a:113b:: with SMTP id
	p27mr6909532qkk.33.1637076429900; 
	Tue, 16 Nov 2021 07:27:09 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	y21sm9434008qtw.10.2021.11.16.07.27.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Nov 2021 07:27:09 -0800 (PST)
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
	<09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
Message-ID: <1ab13c2c-36e7-ba0d-7f57-b68e5f3b36d3@gmail.com>
Date: Tue, 16 Nov 2021 10:27:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <09164111-9929-1755-6e5a-88cf448f663b@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIGEgbWlsbGlvbiBEaWRpZXIsCgpXb3VsZCBpc3N1aW5nIHRoaXMgY29tbWFuZCBpbnN0
YWxsIHRoaXMgcGFja2FnZSBvbiBteSBkZXNrdG9wPyBMYXN0IApuaWdodCB3aGVuIEkgdHJpZWQg
dG8gcnVuIExpb3MgSXQgZ2F2ZSBtZSBhIGxvbmcgbWVzc2FnZSBiYXNpY2FsbHkgCnRlbGxpbmcg
bWUgdGhhdCBJIGhhdmUgdG8gaW5zdGFsbCBkaWN0aW9uYXJpZXMgZm9yIEFyYWJpYyBhbmQgb3Ro
ZXIgCmxhbmd1YWdlcy4KClRoZSBjb21tYW5kIGl0IHN1Z2dlc3RlZCB3YXMgc29tZXRoaW5nIGxp
a2UgdGhpczogImFwdC1nZXQgaW5zdGFsbCAuLi4uIgoKQ2hlZXJzLAoKSWJyYWhpbQoKCk9uIDEx
LzE2LzIxIDc6MTYgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSGkgSWJyYWhpbSwKPgo+IHRoaXMgY29tbWFuZDoKPiBtb3N0IC92YXIvbG9nL3BhY2thZ2Vz
L3Rlc3NlcmFjdC1kYXRhLTQuMC4wLXg4Nl82NC0yc2xpbnQKPiBzaG93cyB0aGF0IEkgaGF2ZSBw
YWNrYWdlZCB0cmFpbmVkIGRhdGEgZm9yIEFyYWJpYyBhbmQgYWxsIExhdGluIAo+IHNjcmlwdHMg
YW1vbmcgb3RoZXJzIGJ1dCBub3QgSGVicmV3IHNvIGZhci4gSWYgeW91IHdhbnQgaXQgSSBjYW4g
YWRkIGl0Lgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4gTGUgMTYvMTEvMjAyMSDDoCAwMzo1Mywg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBPa2F5IGZy
aWVuZHMsCj4+Cj4+IGFmdGVyIHRocmVlIHdlZWtzIG9mIHVzaW5nIFNsaW50LCBJIGFtIG5vdyBm
aW5kaW5nIG15c2VsZiB1c2luZyBsaW51eCAKPj4gbW9yZSBhbmQgbW9yZS7CoCBJIHByYWN0aWNh
bGx5IGNvbmZpZ3VyZWQgYWxsIG9mIG15IGVtYWlsIGJveGVzIHRvIAo+PiB3b3JrIG9uIGxpbnV4
LiBJIGFsc28gYWRkZWQgbXkgZHJvcGJveCB0byBsaW51eCBhbmQgc2V0dXAgbXkgd2hhdHNhcHAg
Cj4+IHdlYi4KPj4KPj4gTm93IEkgbmVlZCBhIGdvb2QgYWNjZXNzaWJsZSBvY3IgcGFja2FnZSwg
cHJlZmVyYWJseSBtdWx0aS1saW5ndWFsIAo+PiB3aGljaCBjYW4gZG8gQXJhYmljLCBIZWJyZXcg
YW5kIEZyZW5jaCBiZXNpZGVzIEVuZ2xpc2guIEFtIEkgYmVpbmcgCj4+IHRvbyBkZW1hbmRpbmc/
IERvZXMgc3VjaCBhIExsaW51eCBwYWNrYWdlIGV4aXN0Pwo+Pgo+PiBJIGhhdmUgYSB0ZW4geWVh
cnMgb2xkIEVwc29uIHNjYW5uZXIgd2hpY2ggSSByZWFsbHkgbGlrZS4gCj4+IFVuZm9ydHVuYXRl
bHksIHdpbmRvd3MgdGVuIG5vIGxvbmdlciBzdXBwb3J0cyB0aGlzIHNjYW5uZXIuIEkgaG9wZSBp
dCAKPj4gd291bGQgcnVuIGZpbmUgd2l0aCBMaW51eC7CoCBJIGNvdWxkIG5vdCB0cnkgaXQgYmVj
YXVzZSBJIGhhdmUgbm8gT0NSIAo+PiBwYWNrYWdlIHJ1bm5pbmcgb24gbXkgTGludXggRGVza3Rv
cC4KPj4KPj4gSWYgeW91IGd1eXMgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMsIHBsZWFzZSBoZWxwLgo+
Pgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

