Return-Path: <blinux-list+bncBDYIZZNASAHRBNNMT62QMGQEV3GORNY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E38093FCBB
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 19:49:43 +0200 (CEST)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3db153fc2b9sf4003845b6e.3
        for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 10:49:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722275382; cv=pass;
        d=google.com; s=arc-20160816;
        b=bi1Kw4WCc4vn70X+SRGFwzhKqBDicOO5VXsLg6YFCxdmdDSAqAbBZxMbjlxs8sfoGV
         yxbnDytMD06AR2SMAnkI6oRjnVHvO395uSM3v7ryQGX9HquNU1xEjR4qXXg0UqYvN9xb
         ZRFerMgXKy3OhFAkmp/e74zuWqSM43Fz2RzvPLCAXjGt38ExzFabYsm3MHGcZRXk7lWp
         t+4IXqC3TlQkLNup1ijGc2gdCEMV8XrgLzA0giv/mAwnTb3UmkMHckuzpft4lAGCbtIt
         9Fz3INIaOLCIHU/6iLppKdccDOfjkuB7SXET0JMMctnrQFwxthe1kIk2RgwW2vVxnvvQ
         lLjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=mCZC1C56z4bZnNp9luORwKatbJfUQqS2Td7+rChsdWg=;
        fh=h1GyJeMrASRUifE74TS4opUu8sLA6/4mNMfyjED7GRU=;
        b=LWEIrOju8hy/W8HNLOpqqiLTPsma7v/Declv87HnhsGRjE0WZQ4DMns3nkt3LpvTXA
         PtezVhEQUYZ+3E2uo4hmnHdA1lZxsuJfCMsRuE+6lJPEhJxby3bx8gR6AHMoAh1lelvG
         co5BqJQ4q9gpT5HVNVcCQxpGR0q581e6rQgawJazLF1clB8iwT5spXpXOGwyX7jOWu1i
         0wAChrIeL/IUxXHTp8cs2YWVS2dwcpMEMcuLXUDCLVSissemLOOTOMJyooGUt7myJ3V3
         gZ4nfLPEhBCyXPikxpj1wZmwYLxR/WqJ/E2gDLhIibV5i4T/7c9b+iVIgpzF0RCbW5Vg
         TWpg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.50 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722275382; x=1722880182;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mCZC1C56z4bZnNp9luORwKatbJfUQqS2Td7+rChsdWg=;
        b=Bce56j3gAZ/cQKrOLId+C9xnXpT5LqDUPJv0VNe5PKY+Ta7TNvMn7RUOs/ilRvsff7
         B70gplItIk+OscSRfwPO+kZ5LdfIuN3S+J8RHgfbgkDbklE54D446vLG7yxZO+8K6Wop
         IjoXkTEyolFXuz0+ODRJTgJUShUhxzByd0JNay4sQsPFij/EKt1SvSih+qOdSsh+V0n5
         YKoIW4GWXRyFlfBxN9HbBk5WMadPbMmvkIySJ4DrG+B5b2wJPHazsl2vPMpxekkba7Mg
         eVoSkkDSahfy8fl62dW2yWoZuIMCUHcPv8Kzda6uIXJznI9O0vYIJEFEqMAwdpanO3AL
         ERew==
X-Forwarded-Encrypted: i=2; AJvYcCVnhJ7tTvVKtKVMqfxBzY/aCn2ozrQaC3dr3s+iydJ1tmodrMcrJqveJnRa1PyVr6XiM6YJuyJrWhOtKlVLRe3Dv9cadc7SdFSQ
X-Gm-Message-State: AOJu0Yxe6ml0UW0dal3pfCJJVKlzqVDHYxeYhRFBeFiDy97B0f4eZwnN
	3zpz0GphZyXmV6eoQrTQhCrWXadZVuwohPV/2Y2L1ur2zc8SMSwQfXStUfSuHRk=
X-Google-Smtp-Source: AGHT+IHKZ9Ox7PT5S4KnWGfp3WAZ4KCpwbY0mGwx1nRiLRoI8FWK4si0QRiCvzlQYLDwPq1Z37CN3w==
X-Received: by 2002:a05:6808:309c:b0:3db:15c7:b02f with SMTP id 5614622812f47-3db23d0d0b4mr13234932b6e.25.1722275381805;
        Mon, 29 Jul 2024 10:49:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d11:0:b0:449:c35d:afa1 with SMTP id d75a77b69052e-44fe2ec509bls84594341cf.0.-pod-prod-08-us;
 Mon, 29 Jul 2024 10:49:40 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWfP99JWcULRCotYuU0/ZnqvZZGNpUYg0svZ9qMQQRCKq4iW+O8nK7Jn4zZVxNvzO4g7LTrAlmef2nYW7zlhzJwB4oeOS3VU+C6SD4H
X-Received: by 2002:a05:622a:2cd:b0:447:ed12:77ea with SMTP id d75a77b69052e-45004d70ff7mr87642691cf.11.1722275380683;
        Mon, 29 Jul 2024 10:49:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722275380; cv=none;
        d=google.com; s=arc-20160816;
        b=mbNTfeYEa4jyztamYecbJhMYAFH3BvNgkleKtkKIq77shBPpMHme/w3H6e05JS8c7q
         1UwxCJa61s/TOdhXc6mtGjRyGZ77hGRsLF/y4OkJ209n/3sc+20Y0+eIGjPQ4Qp5Sl1B
         NZ128bzlUGhHzW5zUtghMUdkpCNPechaizKupt44FSTisIop+DdxCKCxXi0ozOJObfmk
         4WbEIR9kPWJR+Bay+4YU6C/kpDPrYWtObplOUp8uXPIXaCEIYfbGx3W+TMzEH4Sl6teg
         kX0jbRA7LHbCIK+jBPX/PZe7Qz37uYoSiSSXK4IbEBUCIC3zeNwHTrYWHJVsDFUZWwBN
         AAmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=licAE43vLW9CaUB4OdkmW4OGyXWwG02IT2nLlQUI0gA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=02VgIPzG0940op78cboERciog/OC/UQL0w471WY3zWxFkePYYJfMEN9FvN32UDT5Vn
         pvkxLGtXEgzuUUvs1JwDcnZvCItzulJrwCPB+pk1B7sV4HoGtPYmHkhVOdykm/iSNZlX
         kVmjEw0c3Es7euW+QXj1JRhyCqjvEkis24p4W0onje3bsShOK5OE/+d6cht5DeBu45XW
         S+e/4VfYzfQkF66Abu+3oJ4gO7hdayeKe90TXGs+JUjnBd2YDRa7VEmih5Fc9QptehGk
         d/GFQ2HUYyp8BO+ir8CbpbIXlzuKpYRfYcGrwuYwVE+sD9G9ie/9qeU7r93dLUF01yMI
         nvMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.50 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe840917csi114775921cf.445.2024.07.29.10.49.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 10:49:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.50 as permitted sender) client-ip=209.85.160.50;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-114-7BBhEeDcOeqvaxb0QvMxtw-1; Mon,
 29 Jul 2024 13:49:39 -0400
X-MC-Unique: 7BBhEeDcOeqvaxb0QvMxtw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3048D1955F45
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 17:49:38 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 218DA1955D42; Mon, 29 Jul 2024 17:49:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 187351955D47
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 17:49:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 916EE1955D45
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 17:49:37 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com
 [209.85.160.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-r_IXsEtJPG2AcbLGaWbUJQ-1; Mon, 29 Jul 2024 13:49:35 -0400
X-MC-Unique: r_IXsEtJPG2AcbLGaWbUJQ-1
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-260209df55dso2308176fac.2
        for <blinux-list@redhat.com>; Mon, 29 Jul 2024 10:49:34 -0700 (PDT)
X-Received: by 2002:a05:6870:4409:b0:250:7465:d221 with SMTP id 586e51a60fabf-267d4de85fbmr11524597fac.28.1722275373268;
        Mon, 29 Jul 2024 10:49:33 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-264fb59ec30sm1939596fac.0.2024.07.29.10.49.32
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 10:49:32 -0700 (PDT)
Message-ID: <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
Date: Mon, 29 Jul 2024 12:49:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: WiFi on trisquel 11
To: blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.160.50 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

i have installed Trisquel 11 on a laptop and it works pretty well, my=20
problem is it is not finding the built in wifi card. when i have windows=20
10 on this machine the wifi card was working great. how do i get=20
trisquel to find this wifi card. This is a Dell laptop. here is the info=20
on this system: model number: PP28L
reference number: 07147
dell LBL P/N: NM508 A01 APCC
service tag: GYWXLJ1

XPS M1530

i know i can use a USB adapter but was hoping to=C2=A0 get the internal wif=
i=20
to work.

if this is not an option what brand is the best for Linux?

The ethernet works but i do not want to keep it plugged in all the time.

any info would be appreciated

Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

