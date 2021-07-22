Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8BC923D2792
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 18:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626971352;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5wGbWKoAFj7Le4Nm1e4XDm5NpdrrL0qSoFVfPolzCR0=;
	b=I+fER0geTYjVUYNy4j8qZzUVnJDFB+rZlvZ/ISzQJGaW/N6m6T35775BdhDGeHAUN6KVyf
	6/Il1gfrEPuOZwrBNLTkiJ6JNWh7ewOBR3de8x/+V/FEVpJAqzFVQvnfFhJBb4WHmyeJ2k
	hWeXU63X5g8d/AW1GstIS8utfAXF2WQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-ANh_ULEFPISnN28LLnJQVg-1; Thu, 22 Jul 2021 12:29:10 -0400
X-MC-Unique: ANh_ULEFPISnN28LLnJQVg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B5BA98D308;
	Thu, 22 Jul 2021 16:27:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B0EF1385;
	Thu, 22 Jul 2021 16:27:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3BDCE180BAB2;
	Thu, 22 Jul 2021 16:27:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MGRcgL029999 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 12:27:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 83C7A10F1CCA; Thu, 22 Jul 2021 16:27:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FD9310F1CC8
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:27:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1EA618007B1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:27:35 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-370-4-VXMfeQM76b-K9x28WeeQ-1; Thu, 22 Jul 2021 12:27:32 -0400
X-MC-Unique: 4-VXMfeQM76b-K9x28WeeQ-1
Received: by mail-wm1-f47.google.com with SMTP id
	a23-20020a05600c2257b0290236ec98bebaso3315436wmm.1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 09:27:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=EdFBdPIgNsAelbGEf50sqZ5faMz3fYp3imtEj1oR7ZA=;
	b=TUO825XlV0srVa3nZwZTaOWNcl1WpSg57xKc1+QnIPDR2ZHio0MARscm1h499czlh9
	L4oHB2uh9UyhygjklisBK8WpoqXFSX3ihibTHTLY9OQciu/TTBS57sywBf3C03X/Xs6J
	rZ5WwIPRJsx/OuVBe8N/wovRYIRlcWBEcE2Zgiv+fZx2uZZhwAleMzZktgbh02Rc0N+G
	f5XaeEDK/ahQ9AeEqGh5DVVqB7idOmi0Q1YcydxbNRbJY/6bEnuLQ2iO6+l2eLw6aYb5
	7jjvQQw75Yp/q1I17Eq+yeBhQFkn+dsLCAY3GBTR3A4W53sWSnMahBKNYZjusCDB+WaR
	s6gQ==
X-Gm-Message-State: AOAM531FUUQE4pBWpvw82ty7Aj6d5fkg4POf3a/yyRibJ54A4XH7o4Xn
	ZgnLJHW5Y12eYS3KXHJvouR4dEA5SW/4fA==
X-Google-Smtp-Source: ABdhPJy5lI/Yy6e+fwcUV5m0es4bp2VNJzh0yykw/ui38a13OjrTtfUIrBQR683gL2VfI+7yuNH4RQ==
X-Received: by 2002:a1c:7308:: with SMTP id d8mr449591wmb.20.1626971251612;
	Thu, 22 Jul 2021 09:27:31 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	s6sm35902749wrt.45.2021.07.22.09.27.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 09:27:31 -0700 (PDT)
Date: Thu, 22 Jul 2021 19:27:30 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archinstall and espeak-ng
Message-ID: <20210722162730.nj5alphfte6hrb3m@alex-pc>
References: <alpine.NEB.2.23.451.2107212115390.1346@panix1.panix.com>
	<20210722140602.m3jk7hjrw74gix65@alex-pc>
	<alpine.NEB.2.23.451.2107221221330.4527@panix1.panix.com>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107221221330.4527@panix1.panix.com>
User-Agent: NeoMutt/20210205
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Jul 22, 2021 at 12:22:28PM -0400, Linux for blind general discussion wrote:
> So, espeak-ng is a supplementary screen reader package not a replacement
> package for espeakup.  That makes sense.

espeak-ng * isn't a screen reader * it's just a TTS.
espeakup is a connector wich uses espeak-ng to connect to speakup, a in kernel
screen reader.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

