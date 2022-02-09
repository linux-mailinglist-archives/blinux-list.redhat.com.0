Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F55F4AF4EB
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 16:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644419814;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JFh6ILF6UXz9x3FmeIwqLbwhSZQSCtysL7BvHdYUjQg=;
	b=gwcJDTnNbRVNmNeuH2RixB6vqLi+sTN1dNxKizQtB2XpDATCscJ3NBzKPehbTNDVQk/2qp
	JGRfJz6d/0P55zRGa+Qnh+vqu91rDfGS0oJ/ORw12YttFp6/6+gjiMVqhJqw64hlxhwZhS
	xc56qowMAyInOcZypRZIi++becjsCpQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-wwLBqKmTPs-gxpCqVc2mXA-1; Wed, 09 Feb 2022 10:16:51 -0500
X-MC-Unique: wwLBqKmTPs-gxpCqVc2mXA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A63918C8C00;
	Wed,  9 Feb 2022 15:16:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1131D8049D;
	Wed,  9 Feb 2022 15:16:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC7571809CB8;
	Wed,  9 Feb 2022 15:16:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219FGcdT008933 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 10:16:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 40CDB40CFD31; Wed,  9 Feb 2022 15:16:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CC3F40CFD27
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:16:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 24D841C05EB0
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 15:16:38 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-584-ui1HiiLPP-GatzqqcrU8uw-1; Wed, 09 Feb 2022 10:16:36 -0500
X-MC-Unique: ui1HiiLPP-GatzqqcrU8uw-1
Received: by mail-wr1-f47.google.com with SMTP id k1so4615120wrd.8
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 07:16:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=+4f3u8pLjsXiAYtAcRJKe6E91iM+1y2qREigwSpaw/c=;
	b=7H+MiEzRF6+V5P2+4XwHxvX4ee+qIIYrKfKMIw1k+/C31TZNQPkdVC+JSs06Sz/uxo
	OlixotxatZQXhWRFCaa+mmfP6cBEJsdCBvlSxYmFS7PhUEF2jKf/Yxu5NCw898QswehS
	nez086mliMgiakRUfzgXb3Ovpp1PWmjlaYQptHOytxwmlq2Rry7u1iSu5LmmZZS7aabR
	UvEJIkAHFUTiODqa3le9XzEjw712M3KC5NjJ6ohCh8P2fxSQkRJVaoEiR4inHsBzrpR+
	w0hawq632/t441P2yscpiCexIbUKfAXVNH7TRp9ZYPpGlAsQkPmv0n5mVJMwTNtrVwV/
	QLmQ==
X-Gm-Message-State: AOAM532ToBnJ/gT8fJc/eY7IIrSO1bnO+LyFs5B6c3gIkRXZJuCPZ19x
	DpIlxwcKjJHPyguLhmKrY4M8HhI8kH0=
X-Google-Smtp-Source: ABdhPJzSYzmW49KpdvORHKxuFrkVkEaDm7M/FShR+XDJ9quN7anDY/TKwj5ek2f8/bT/TeypNP4bcg==
X-Received: by 2002:a5d:6489:: with SMTP id o9mr2380805wri.628.1644419795348; 
	Wed, 09 Feb 2022 07:16:35 -0800 (PST)
Received: from [192.168.178.49] (host-82-51-142-158.retail.telecomitalia.it.
	[82.51.142.158])
	by smtp.gmail.com with ESMTPSA id g20sm147861wmq.17.2022.02.09.07.16.34
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Feb 2022 07:16:35 -0800 (PST)
Subject: Re: regex help
To: blinux-list@redhat.com
References: <20220209.123818.520.13@[192.168.1.100]> <87ee4cdrvs.fsf@yahoo.com>
Message-ID: <7b45db32-7c88-03e9-ce04-9b7295fd8e37@gmail.com>
Date: Wed, 9 Feb 2022 16:16:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <87ee4cdrvs.fsf@yahoo.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: it
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"

 > Is=A0it=A0possible=A0to=A0craft=A0a=A0regex=A0to=A0just=A0find=A0all=A0s=
ingle=A0letters,
 > followed by a dot? What file renamer is the best one to use for this?
 > The=A0one=A0I=A0currently=A0use=A0is=A0brename
Alberto:
Hi,
nice brename, I just installed and played it in last two minutes.
So, try with:
brename -d -p "(\b\w)\." -r '$1'
Alberto

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

