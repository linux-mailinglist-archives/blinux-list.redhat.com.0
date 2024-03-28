Return-Path: <blinux-list+bncBDYPVTOXSQEBBSXHS2YAMGQEWUHV44A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAC3890814
	for <lists+blinux-list@lfdr.de>; Thu, 28 Mar 2024 19:15:40 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-22a3495dcf1sf1216376fac.0
        for <lists+blinux-list@lfdr.de>; Thu, 28 Mar 2024 11:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711649739; cv=pass;
        d=google.com; s=arc-20160816;
        b=D9Pio00KPz+CtPbVAEpTqHegMX/7hRKc4y13fJWmL0Hdgzg2GY3Fuw/kqBdO2pZ8oF
         ROerE/sqalcqs/JCY5Za3yOUAhzyIkbPdBTojkqyqfV3RbpJ0Dv2qjIGEVMJAaxb2da9
         UzVV8ZrDgAKqelatOEXPQXUyO8MQYRijUToSdHGasKj6e5WqxtNDq9LFko+04oOXNwnR
         jO3SaD879nHP20UcOtQLa6AQoaU+k1wfU3ZbV5I2YDax1weZSbFDssfdaCFgNYxCoZcJ
         QAZUyO8hIVbUT0P+9m/cD5XdRpa5GDrnc1BiPZFpemnARmk/QuRS4f2cO3QengnzLAqU
         DEGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=cRg9OhnYmBGuSl/reHDAlDoQ5dKEJDL2B4znwKGgBe8=;
        fh=k23NueU3BH/5b5Ronfbslq9dgjB1s39uJe3m/p9Ib9k=;
        b=p020EJBbp48ZtO3bLqjKjnWjfm05AVuO4Zy20UpnKBytAabKMTq3rJuoOLql/i2uux
         gFm0JPhe+MVwwCizauz9zXl39MaUY/b1UfkWG66ZZXLcyJGb9WY2SFRwiBcR/ZZBRWzt
         Afcy2dPmXc+++9AH2n26nNknOVeYp+vaua8XXzEKDAzPzsRfiABQaKG/MrigzaU4bX2E
         p3mYgtzf/DsOF/1YA8JJ8ZhmGFKPzp20irkuNK9353BtIm1yU8o4tUqjMNnLPHQW3KXt
         WViohP414V2RpTd0bdG/hnxJXEqKD9lKYhi2d0RaW3ZPXb159Mj7j3e9AsQ4x7yDdYKN
         j6cQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711649739; x=1712254539;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cRg9OhnYmBGuSl/reHDAlDoQ5dKEJDL2B4znwKGgBe8=;
        b=WA2UaucdoLCZPuBUmt2ENQ7M91JNApwaP29OzZrQeelIVQz2vlylePJQeo+rg/0Jpm
         /l00BhHPMaSpNJ9q31syxKM+oTr+JE0gi67LrXA7TaAUwCvIoRTL4gLalpj3Oat+InYi
         Y/F/2o6Wa84x7u/v67ZaclXDOmmebts9hrQLxQyh7k3lGJF423TcdrapkQ46vvYFSENC
         YucZAUbl7uT8uCihSr7NEpLBsXWVfOr4Sp5MgrN5PgxVGprLLpc5YCN79/80I0D5tEJU
         oAN1LQDHnMKODYwcm3vkX9pZMpADso4C1qVWHLndVJwof4SALG5hyre5BZ1rnSMWgpfM
         kviQ==
X-Forwarded-Encrypted: i=2; AJvYcCUPF4mUe8CPGghEBkSQgX9HwCuEvtl71wiX+Hiy01QPt4v+FX16e1W3cVXe8KUSbJSNQ2VTW4JekCTEnv99u7LXoW4YiytIcgSA
X-Gm-Message-State: AOJu0Yz6wNUXOwUnxF9hMkwjO/RhmEH1xz+eyKrURQQwYN6FjI/+clPn
	6RI4MDtOEM/nNzjWQFoTOjwaSV1HQdFqR6MBoxtSSjbyd9lp9HTzo/wFa7EwgGA=
X-Google-Smtp-Source: AGHT+IG0UtxjkT6CYKvi13GzWNegYUrw5yB7mGpUwoKXwXooavG9GpGLV9pdtXpxQOGPYJpOPBH5eQ==
X-Received: by 2002:a05:6871:e788:b0:22a:f96:28b3 with SMTP id qb8-20020a056871e78800b0022a0f9628b3mr4429208oac.53.1711649738976;
        Thu, 28 Mar 2024 11:15:38 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a26:b0:431:7e7e:796c with SMTP id
 f38-20020a05622a1a2600b004317e7e796cls1820259qtb.0.-pod-prod-08-us; Thu, 28
 Mar 2024 11:15:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWLuU+sqiUCmCFfgmJ8ZTaLT6ovL+XJE8hH9bOIK3e3fgHSsJG3y2TIrNuTdQkOCR0BiOhV8kNQPm4tEgPNaxqMQlJiays9in9zH+1e
X-Received: by 2002:a05:620a:5e43:b0:78a:40f0:3cad with SMTP id ya3-20020a05620a5e4300b0078a40f03cadmr263521qkn.31.1711649737905;
        Thu, 28 Mar 2024 11:15:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711649737; cv=none;
        d=google.com; s=arc-20160816;
        b=iQylxDQUdSyXcAlBeFG3EENBgoQqo1bvBAOkvpVZ3RUyYReW8847i6JReNt0I+vbW9
         JMrHhliix1mfzuQv52Kgbpi55FyuuL0SEOdgS/Wfusyf2OiBnlp7+euccdOjI79Io4kd
         7WfC9uzqRqU9as81KrNs8L/nRc9Tw/ibO27ANjMW9cxul+Lg7GenZpnLTOAOcg9HPuFp
         OBF0Z52taAy2izzCqVU90H9IleLLF1IkrItSi4UR6KHXF5NGdJQlZ0nqLciv0b0KlwHx
         w/5MuLGPDXFQ8DYm4gnAGEf+WjrHETvJc/QF5dURsb8jNr2PmsrMdkqEpnXnwGOnXgF/
         l2tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=ROoXAOrnCfz6p6402IwpwFB5S+U1qLxlYhgBKNXPL5w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=vDCd38dD4ghhXY/qCp4nCAS/DwkSNdMOx6JS27hR94RRIpXGisJSvDy5ibllVGDAKY
         vMvkgdiMu5O5stdD9Bvsc31kWhjDlQ0hZsixcU0TYIRvjA77yF6YBjP1nIHqVLapYT3+
         C9sj4owtYhEjwGdjN3rCE/gFsyeJKAPw8D3Hu9OzACEqb/36EXWVBt10V7JhK1emLYYz
         uX7YvLSYaMS1d+O8L2Rs60GT0/dXlY+Hy+fZAO+PfSnog/a08i8y9i9abnt1l1KaqSD9
         6CRukUpKK6fUGhR2XxMz6etwmOmEUU4c7u7Vbci73y1eTTvZe/Ps3oni/hFJXhGo7y2T
         5hlw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id h3-20020a05620a400300b0078bbefc514csi1556992qko.613.2024.03.28.11.15.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 11:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-532-Es1Q4pwmObGc-HEkpvVuWg-1; Thu, 28 Mar 2024 14:15:36 -0400
X-MC-Unique: Es1Q4pwmObGc-HEkpvVuWg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 182FA185A786
	for <blinux-list@gapps.redhat.com>; Thu, 28 Mar 2024 18:15:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 152CEC04227; Thu, 28 Mar 2024 18:15:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CF5DDC04223
	for <blinux-list@redhat.com>; Thu, 28 Mar 2024 18:15:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E1A8851780
	for <blinux-list@redhat.com>; Thu, 28 Mar 2024 18:15:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-321-KqcL5yvENC-Z24qev9mAeQ-1; Thu,
 28 Mar 2024 14:15:33 -0400
X-MC-Unique: KqcL5yvENC-Z24qev9mAeQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V5BY12fX1zrYb
	for <blinux-list@redhat.com>; Thu, 28 Mar 2024 14:15:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V5BY1283Pzcbc; Thu, 28 Mar 2024 14:15:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V5BY124r1zcbC
	for <blinux-list@redhat.com>; Thu, 28 Mar 2024 14:15:33 -0400 (EDT)
Date: Thu, 28 Mar 2024 14:15:33 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: knoppix and modern computers
Message-ID: <b07e9aaf-d426-6d37-0ef6-6d3a559f23f5@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

The two do not work together.
I had someone looking at the screen earlier today and we couldn't even get
a knoppix boot prompt up on the screen and without that the whole system
is entirely inaccessible.
This has been a lot of time and frustration but it's not a total loss
since this is one road I leave untraveled from now on.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

