Return-Path: <blinux-list+bncBCLPHQH4XEIRBF5GTSZQMGQEWRPWWPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 450FC9024A5
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 16:52:09 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5bad06fe358sf2446612eaf.1
        for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 07:52:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718031128; cv=pass;
        d=google.com; s=arc-20160816;
        b=DqqJ6+D2q35ou8XmcRg8J8IxrhSr2R4qeDsbIMmS4cFY7gZZhlqRz7AvLnBCpORcfk
         rC5h/DQQvMROiki3KIcug9GclaiJ/Phgb0LMe8pRkpDk3exlCJG9nuluP4k1/MreXJgQ
         Tw2K8EmcdejRG9Oejb1uTn8YeGi/X2I1JPH8x9TzrP71ptVbw0YbhlJi3qoj92vLsjVP
         ufHv9z8sLHqOxliHtj3OKrRM/fPkpMfK6Lj0G2YfWX5R6CUKTd1FIGDIEKhwMQ2zoQKa
         E5xnrT+OhNmpnYD0BVd6WTBOHHt8c0BSU6gUTDkllu6KhdQl8ihATBqDbtdw/lShhaLC
         u97A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Y/7dlkh8ZHySoZ5PggnGa89WPQ2DzJJa4sV+nMH220c=;
        fh=9P+ZVOfTFYB5bhlA/bA9pMXczwDadukoxH4Od3qigFY=;
        b=oUPqi2JQl6q3xPuYv/y66Zc5rLHyqu2V/G83A1nmT2YRn4vkImP60OPvLL7TaCro21
         wRREgEq8Vq1ncEhE5Vq+g5+l1ybtP9Kju73itDaSAUDAZ+vAEwQqekvnkgUEy0pszeUJ
         97YlpPcTfDUWKV17sdO0MhuVL/oxU32w7Xj/DyXqIn7G1DWPBlY9zKyD2hwtx1f33Q6b
         1lGWPD3uNfD2oU7vD6f2IV5IEMRIS3swt8j0+ypWUG4ubsoPo7Zy8IBbmlMcKStfwK4t
         H5918JIzeS+GOavrWmKH96NMCABaxLXcWzmXr/Fod899Nym9UL9ZtDsl+8zB9041jnQ1
         cdGA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718031128; x=1718635928;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/7dlkh8ZHySoZ5PggnGa89WPQ2DzJJa4sV+nMH220c=;
        b=lbnp+STlBnvtMbsvtisZzhr1qCoWgGe319VunB5xglFXiryy4n82Qwgk+OvE/mcqa3
         3xFHgkc8ElrUASo0IQvApqleB3ML3B88lARjNIf+BwFlX+B5RZXx1sPduRvxl1BKtr3o
         FqS4wVA5fVdxiUIPPnbxAuxR7bS7Ci65A27EyjKDDCq6Qvi0i+rv0+l57+33SVKv+MJd
         c9+F0B261gJvUKLiYbNQAA9sI+7HV/BpRr0n8WzFc/634P7b/1GUUCmQ2iz9POJo+GPn
         EJA/VBaMWd7KGBlT594xCG1ehd5wHvaBDsaTzPypBMkcBit8EgQXGnne+lCc7LnlkRhP
         pw8g==
X-Forwarded-Encrypted: i=2; AJvYcCW8tfwP+vRNf+mZuGKfk9ZLLypF2q6NwFh4OyjeNqcLmZggXeq3fa5y8fE3neHw6+/rX02uMb7aK9QebmovKOf+X1hEu02Qmlbf
X-Gm-Message-State: AOJu0YwYvPSzwv86FxBMcmasSFzmsJFsOlT/aYj8wU/uzU0vD9Zvl2eD
	jDL8afL4eVd2O/zFMafs760zOxt9pLBkHwGFOi/9TxoNDd6PyCPANZ4NUVwZwZY=
X-Google-Smtp-Source: AGHT+IHV3RsreQ8SZMTH23OlsnYvUZyxFVti+8ByZdTs3wBh9W9iXycv4OuPVGxcmVDvmDbJ4QF54A==
X-Received: by 2002:a05:6820:1c9e:b0:5b9:70f8:4b64 with SMTP id 006d021491bc7-5baae89d003mr10209432eaf.8.1718031127745;
        Mon, 10 Jun 2024 07:52:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:d47:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5baaa2abc07ls3899825eaf.1.-pod-prod-05-us;
 Mon, 10 Jun 2024 07:52:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUeyQicdoK+ptHbMshffLfzY2v/JmgdbSJ8o87EUP7DKAuycjVRtC/LqWysoZbsLMWs9h9P3egljeMJxtlcWG+1hJcXWtxsWbonc9hi
X-Received: by 2002:a05:6830:1d58:b0:6f9:944a:254f with SMTP id 46e09a7af769-6f9944a2f8amr5011406a34.0.1718031126597;
        Mon, 10 Jun 2024 07:52:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718031126; cv=none;
        d=google.com; s=arc-20160816;
        b=ByJ2Kn4u+g11ImboGIV1XJs5z2VN0FuhWBAqDnf0qNDIjDtIr2nvyygexIEgfmVc25
         TdaM80zFbvK0Bbw61cZSIp7kgIXlrx80b3oOQqFmd99jR+T+xKsXJ6oSIRc84Px03juy
         FhiptZ/pa/1S/RT4xHRI1PXmV/WPHEggDhjFMmkftvS64I2EfaGB5LJMgx1UwaUhZggR
         qvvjpi9nsv04jdQpCPDSuR2cAVJaCfPkGvK52K4fuJts3ARA6yZc85FE+Fce5IilBdZM
         S7BYVKg+7jQINGhME9l3hwzJuiuWSxhDGtDHjWd4RohRX/Ui9PD4/dW8qjdjRqu2uUBV
         M32g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=LJvXcvIruA+/TnjAuY3CvH+C8r+gEmvb2i8nrsYeNiU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=W/A+d+I3mqtgydj0WWQWZT7SAbkMmHDz7iWYPNz2cgLxm6wSTE4FHfecGHXGlPR5YY
         EubS2uJCQAWxWR38TXdEZ8IrkYB8mQBGXZkPGtBiLXukbv+bI1IQB7RUJfpLiZ9ZXGc3
         2BddAzanB9anQwIe9hLo+A95iZJFQkUA+/J6Gx3rc47vw+0JFvnlQuXjUwLGYVvBcIcn
         Opy56OG5h/BE4Tbr7MIx9mtn9ieW54LppEwiWVQD1S4kFj5B93YfWwOBI7FVLSP5G5II
         yD3krGZhhmwYdjGkD+dvSgV7gS23nU4oN2RP7EUGWbi24sYCGJ+f5nrD1qm+LQdCe85h
         rzMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7979e091260si107226085a.333.2024.06.10.07.52.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 07:52:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-518-3ufPDWs3Om2_r9j3oCLF-w-1; Mon,
 10 Jun 2024 10:52:04 -0400
X-MC-Unique: 3ufPDWs3Om2_r9j3oCLF-w-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F05819560B7
	for <blinux-list@gapps.redhat.com>; Mon, 10 Jun 2024 14:52:02 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1966E3000224; Mon, 10 Jun 2024 14:52:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 15FC830000C4
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 14:52:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8F4CB19560B7
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 14:52:01 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-447-NGDdHjXEO6KHM8zybyIoMw-1; Mon,
 10 Jun 2024 10:51:58 -0400
X-MC-Unique: NGDdHjXEO6KHM8zybyIoMw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 6B32532471
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 14:51:57 +0000 (UTC)
Message-ID: <0e4e3576-6b86-4a32-8f56-1255a0680209@jasonjgw.net>
Date: Mon, 10 Jun 2024 10:51:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: likely accessibility defect in archlinux latest iso
To: blinux-list@redhat.com
References: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com>
 <26109e97-dc30-4645-a556-0275aefbcf00@jasonjgw.net>
 <72v7eu5uv3qahyt6np5simjydkn7tzofdnne262uitrj7iroxg@rtn5jtebimq5>
 <12b18615-9745-d619-448c-8073332c869d@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <12b18615-9745-d619-448c-8073332c869d@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------0BzMhNy9Rckne4KMI8TWWT7k"
Content-Language: en-US, en-AU-large, en-US-large
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

This is a multi-part message in MIME format.
--------------0BzMhNy9Rckne4KMI8TWWT7k
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 10/6/24 08:52, Jude DaShiell wrote:
> It may have been boot sectors on disks were not as clean as I thought and
> that could have broken the arch installation.

If it's an old BIOS-based system, then installing a boot loder should 
overwrite the master boot record.

If it's a UEFI system, you need to make sure the correct files are 
installed in the EFI System Partition, and that the boot oreder is 
correct (i.e., the efibootmgr command).

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------0BzMhNy9Rckne4KMI8TWWT7k
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/6/24 08:52, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:12b18615-9745-d619-448c-8073332c869d@panix.com">
      <pre>It may have been boot sectors on disks were not as clean as I thought and
that could have broken the arch installation.  </pre>
    </blockquote>
    <p>If it's an old BIOS-based system, then installing a boot loder
      should overwrite the master boot record.</p>
    <p>If it's a UEFI system, you need to make sure the correct files
      are installed in the EFI System Partition, and that the boot
      oreder is correct (i.e., the efibootmgr command).<br>
    </p>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------0BzMhNy9Rckne4KMI8TWWT7k--

