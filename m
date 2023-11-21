Return-Path: <blinux-list+bncBCLPHQH4XEIRBTG46KVAMGQEMJXPOPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A607F2E2A
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 14:19:10 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cdc542b56sf69904601cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 05:19:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700572749; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3KTw5bAYse6RT2I1in289u7hllYJj6HvsqClzmuiVBlAqzfzgGvvAb6KY3ugVhMYr
         lkB+xs+r3qbGctY3n9sYF79fh6dd4cSWz5Qk+pr69+Lb2oiyrMZqvJVsen2QxooytX3e
         RN2w0q5An7ofaHyY9ar3zd+T4xyxDzFrRV6XPfSiHbsRA8f9blyd2B5V/D6pVcupGIBN
         9VDbshoAn6NbxNPxURwZUY6rG0mJ/k4chuGSfqkE4X3/sccy2plmug2l50OytdB1PUlJ
         1eKlTxrgHnAMG/8r4nX3Eme3U4EcY7pwHazXGTNTuIfxcfkZsNba84zix9lJJk2YCaiY
         GBkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:references:cc:to:subject
         :from:user-agent:mime-version:date:message-id:delivered-to;
        bh=dm4cbBbZgA9IxIbVv5rSqLZxGLNlcqF3Tbm/CH5I9qY=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=JNmapfN1RF4yDYRLkloZ5los/zRD5y2wGp0dktFvjZgojDEBBhhoTM2E3QE3SlcqpP
         llC+dQi9c2YNY40Z+Idx81VDDQv/a5MjApcZLATkQpj8gYv5D+61DteC3bFdbQqxJV28
         8WYUva/U4KhgtUMIUsHYyIQ7+l7AqEQ/s0mt8mZEeDK+BKQN+enBoV9JDKDpN4yhet7F
         Rju02TTo3PrRC6n2B9000GscPoU6ES3kjuXMt+MFmOqsHZMEKTOLrTRKMK3iUWulQDqC
         1nUJWdmNyzgM/p+T7W+W0b1rx7GfnK0dZdOd917xNmEF6Lg9e6oKTOD8UXzZCmdno6N7
         KLdg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700572749; x=1701177549;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dm4cbBbZgA9IxIbVv5rSqLZxGLNlcqF3Tbm/CH5I9qY=;
        b=DWFFQyg4ngsfVfrYAtM8sepetWsXh/3DNKvgpLKxLynatIK0Y+cFJkfQ1y9xTUnAxz
         5xlVydl+mr+l2QnfT08TZV5GpMkrCrMRoWSCItAtr8EigM1YwZArfhUhHhKZq0VwahnQ
         pE3U++i9XQHu2tJS+E5BkRPchLVv+3h+M1B+TQ/eBHxvwkyFucCqBGWMNFKH4jSMkhLb
         Ke+B4U4TRIPVwnR5s0ADWV92jH+PVzUDrsg5Z6VbV0qhHu0Rz2YLHtegsl+Hp1RgxcpZ
         o7GbnKNEaZR4F4S4zsAx+e3XTZVIlsAyHD1f+yG6ki3FIczDlVsdIDpPOKzwUMoCH5Ao
         F1ZA==
X-Gm-Message-State: AOJu0Yy0/532uYtOO9U0pHu1j16TLvIutmRJtkYUBv+giGx4uiS8784R
	aQy+2KXoKrvmfaBy4QDpUmbl5A==
X-Google-Smtp-Source: AGHT+IHG+f33S6l6UU9z8EPEpUXuG+oq3qgq1pMYVarxRiMKZx5q/ascg2VEZeMiZMYKtIevYZ+i3Q==
X-Received: by 2002:a05:622a:142:b0:41c:d9e7:7782 with SMTP id v2-20020a05622a014200b0041cd9e77782mr13429292qtw.68.1700572748663;
        Tue, 21 Nov 2023 05:19:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a1b:b0:41c:c118:e752 with SMTP id
 f27-20020a05622a1a1b00b0041cc118e752ls19525qtb.2.-pod-prod-05-us; Tue, 21 Nov
 2023 05:19:07 -0800 (PST)
X-Received: by 2002:a05:620a:4011:b0:775:aaf7:903f with SMTP id h17-20020a05620a401100b00775aaf7903fmr11474392qko.67.1700572747726;
        Tue, 21 Nov 2023 05:19:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700572747; cv=none;
        d=google.com; s=arc-20160816;
        b=oGJc/r+GkWYQ2ddi/7gqpw0FxZLfamEK00ZMn8DDLzeFB6lMb3zqnffO03930ZlAm8
         1xKZTaKYanVJxiDGGkYY5xoYHP2Vn2/dZPWGbOaKwVNP1eDpEY+GHvbePKnaCNhG+6CH
         dR2381hWrYvjpcDj5OFDmGw3SDPtekTPnT2Ykxs6EcpLBzeuYXgHgZiI76vJCrEE7K+b
         p1fVkNsAzTHmbq+XLGoFTsYSMlijnM7BZHRCikY5wF1XMEx4yTWwYkqFUVWxGAemnPYm
         xely04lvwQeXrQ9wCqUysaS7gxBNX86boO3f4Hr4a86BgvKgsRmH566qEn0RkMPI/54o
         lYNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=gU4dRLx+AujH3MMfGqoXO5ueWLFUCwimaxuMJdUnOFI=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=WANLQcgVgMPQIP3Cm36loloAVmsYeCSfJBH+iakB12oXm0mWpQvi2JFVUkqGTED9eU
         VLSaFtGBnna/PFKdRmevR0z3zkDyDW4lpbRqwf04MTBU06F04t70FjxM4J1Yy7pYhPOJ
         K0RTpxTHAVqbwVf4NxtgztWqhl8AM7sVQ8l9qADNMQD+JUnRXRrMtdwTUA0HZyjYsjVO
         zM9uUstAqlb/K43IieacsevP8XIPxNw/RHouoE9ZH6qTWJOsu2Ru0/kOnKHsQU0GAvWX
         2S8zV4Flmmrt9wXyQvxDV2VI4sQMFAn2aYZBUgsQlFODqx9Anqxpy4TOIZbFWP46S0VS
         Tb+A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f12-20020a05620a15ac00b00774373352b5si9106488qkk.769.2023.11.21.05.19.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 05:19:07 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-151-CROtZRBCN5u34XAAFJMXzg-1; Tue,
 21 Nov 2023 08:19:03 -0500
X-MC-Unique: CROtZRBCN5u34XAAFJMXzg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D36A01C07585
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 13:19:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D07EA20268D4; Tue, 21 Nov 2023 13:19:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C873F20268D3
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 13:19:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A7234811E7E
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 13:19:02 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-rUzX2nI8OR2f-cfub8Dr0A-1; Tue,
 21 Nov 2023 08:18:58 -0500
X-MC-Unique: rUzX2nI8OR2f-cfub8Dr0A-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 669E632007;
	Tue, 21 Nov 2023 13:18:55 +0000 (UTC)
Message-ID: <eb519553-115d-4726-931c-b1e595064705@jasonjgw.net>
Date: Tue, 21 Nov 2023 08:18:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
 <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>


On 20/11/23 18:01, Karen Lewellen wrote:
> The Debian list=C2=A0 is currently discussing things like mutt with gmail=
,=20
> and imap as an alternative.
> Apparently this bypasses the security problems with gmail in general?

Based on what I recall reading, Gmail requires OAuth2 authorization for=20
IMAP access. I don't know whether it can be turned off. Apparently, Mutt=20
can be configured to use it, if necessary, though it's naturally a=20
little more complicated than user name/password configuration.

Running one's own server definitely has advantages. It's time-consuming=20
to set up, and more complicated now than it used to be, due to the=20
various mail authentication standards (SPF, DKIM, DMARC, ARC), and spam=20
mitigation in general. However, mine has required relatively little=20
maintenance to keep the e-mail functionality working, and it brings all=20
the advantages of total administrative control.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

