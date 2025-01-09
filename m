Return-Path: <blinux-list+bncBC4KRXEWRQERB5UNQG6AMGQEYELMK3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id BD187A08289
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jan 2025 23:00:24 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d89a389ee9sf30046576d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 09 Jan 2025 14:00:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736460023; cv=pass;
        d=google.com; s=arc-20240605;
        b=LpcIbbF3xfZ1jFxg0wLLPAetJe5cBLmN/7NY4SLnNE8/iWnDqAe1g65kdsYjezFNYv
         jmwR+1mK8cXLjTNyTDqeXboV7MXnFYiaa4xFFmRLPmt01R2tyqX7gGuOqjMBA9FjKWSz
         Kj+ikBUDL323PESCzaD8K4+uYAvxGBXBvrchnVDolbGtXuAk+0toQJGpPDM4UzZ7x3Ck
         J0uFJCoCfITlkucz3+b1XAElunj+0ccWLL9qx88kd/77HGvWGdndnFt5NuoTeW4y7JVz
         8w5AP6Y3tYIldjTdOTR1AS9lq9V5WzbFflEq3hzqYjmw+GLTlr9PrVu0TKaNfXJD7nM/
         xveg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:user-agent:message-id:date
         :subject:to:from:dkim-filter:delivered-to;
        bh=yrhL2LO6g0ANW9AwjEtBMT62NQeLZDgWwSHMqU3IdVw=;
        fh=s7zzPOxFZRtfZtB0g1cW7g82MxblIfEHkRg5pNb+V6c=;
        b=DT+KsOaYG6mNBH9D67iGk5eo6Hszb8i+F/5rE4E4GgKVlnDAWzyi6+eRkZBHYCT+qp
         CHntzNF1QGh3w0ykt2ZYTXSTP+xAyFmXya07ip9Rhete0kgZ7X+IlBKoBKxlbM8Z2m8/
         8kUANgR6kusccj7yoJkKI8JJ63UCn7pD9cxdFtTVnkggxdIkhIDYZIjW3IVmVdG39zuR
         ItD9KMfO8Oxpc2+k59Q3ntV3I4DZINflvyeg46i8kxI8At1AWgnL81mOqeKfpgf2DvO1
         EzfNbhbPfgyF9zWP4+FnXkKx8GevJYtitrlKqLk8OT2px8HO0LPaqZV/GPWeF1BVk0Hm
         2/lw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736460023; x=1737064823;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:message-id:date:subject:to:from:dkim-filter:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrhL2LO6g0ANW9AwjEtBMT62NQeLZDgWwSHMqU3IdVw=;
        b=aXvoJYIpYRYYiyc9IXguOp0pr1KjYpU1JTMwFi3NveuGTPiA39CFABw+3Crk6upn5G
         BCJkB+RP+LIHIy5gILbuSWq0tZynWtXteO6uApGL4NDjB+J1ZclxOA3ZYmjcIuBEmLCp
         WAyT7RKMsX3uu3gF2AAdQLQEwkA2gM69YXeq5Bo/OS00n5VobhkxqZgiat74btrxFJYA
         NNxR4rZsotxm36CiafqeF2k0EbfKP7ukZX8eFHxWeV1JZ1Qwi2KEBihNY5klwctcyz4D
         8y06SqyEL2Iue2WIny8RqC/VSSB4BvZSPMjIIo66AgwPSNJqtWEKrXDCpfBRF8sqDg5P
         W4zw==
X-Forwarded-Encrypted: i=2; AJvYcCXAfnONAPoei4PcuTI83O1rdZuiiai7Kp3VMhCpESgv5jEYZNlULH3aQk7OlnJ/poVCU4Ckvg==@lfdr.de
X-Gm-Message-State: AOJu0YxeeYQcmbitlSwxq4YAZ+Muy9F/odjZxMj/oxesSgV6MZgvqghe
	X4nAAtrTAHPaEJnLX7EL2gYjljZy12CEcYLYHNYbcExBX5502L5t6V2XmLweIOo=
X-Google-Smtp-Source: AGHT+IEkQRv4dcHAUtjMNyxQmp5ZgWp0J5VlhatRWvYZTQdUUO0L06yTmxVrUoe3TTbW5Xm3oxb1IA==
X-Received: by 2002:a05:6214:4890:b0:6d8:889c:54ed with SMTP id 6a1803df08f44-6df9b22e40fmr130374146d6.26.1736460023230;
        Thu, 09 Jan 2025 14:00:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9e91:0:b0:6cb:d4f7:64e0 with SMTP id 6a1803df08f44-6dfa37d106dls18441146d6.2.-pod-prod-09-us;
 Thu, 09 Jan 2025 14:00:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVej1LPomkVjoxlhgQ/JhTK7/wCP4GpY6gK+ccxKCBwKHdbUWwH1qWOwZuwd3Jm4Edza5SfV5Fpj89MQg==@gapps.redhat.com
X-Received: by 2002:a05:620a:4491:b0:7b6:eaa9:d6a4 with SMTP id af79cd13be357-7bcd9709b40mr985427285a.26.1736460021801;
        Thu, 09 Jan 2025 14:00:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736460021; cv=none;
        d=google.com; s=arc-20240605;
        b=a34PqsDpNdyEZvEIC0MNPRolqMGlsSFtX/DwpVUeI6AWxpkQcMaf9pPgVeoEF4r+i/
         zf0D4tXRKoCK+9I/sgNJ8UMMy4QhPvqNX3ByAELWUVK+bNGEoMlx2PrD5DGFRh29AT9h
         QJTr8nHELXtt8QLZRoyZcsqCVKCo8EsFVec9OScJWshBzlxVIASlVNr4AnVXxzaFxxj4
         iWz29v/v4DSgMnvoZy0H/xU7D5aJIv1kM7rC/fDa/z7ojF+c6jJkDLUKSuTpZLdjMxUA
         nPkHmC61CE+DMjtXaYXkHRjpTwNN62FDYkLtU2IKM2xsYSTsqLgM+1J816AWG+K1QGTB
         gOig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:user-agent:message-id:date:subject:to:from:dkim-filter
         :delivered-to;
        bh=Edh0L/JgsQkedPV7/NuqDNCl9+B0MGarKtysHOy6a2A=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=D8F5oORJ/nCO3lljiZ4Cyf0N+jdJxiR8fEi0jpM9rfVeclhu3mYaLSLZmiHsG6Wtao
         784eUmvBhKwiHy0wO0uC8EQs30ZQacIIxc0dy77KACQ+TETatZ4OdEhsnWCIGuJ9B8eR
         4RpyXuVy+f76S/jXd0r8wovbUwSP+Ft4/HtOMJkaqq0HeYOnEPSdLkk0nENUcIDS7A4m
         aayKMkS+u+uvJ2CI2XvCQD58E+sBZSz9oM1GSFios55poiD6ZOqY9qZq94rWPgbJZxa6
         Wq7262onVfRMPT3RN7Mc5DiKh4UUEdKwYrzFxQauo8+xQiiQiXLnsIVr5QZ8UWbUciv2
         yOiw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7bce322a699si284454385a.117.2025.01.09.14.00.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 14:00:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-680-Mu3hseurOPaBRMELzOuAOw-1; Thu,
 09 Jan 2025 17:00:20 -0500
X-MC-Unique: Mu3hseurOPaBRMELzOuAOw-1
X-Mimecast-MFC-AGG-ID: Mu3hseurOPaBRMELzOuAOw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D992196A95C
	for <blinux-list@gapps.redhat.com>; Thu,  9 Jan 2025 22:00:19 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 49D5819560AF; Thu,  9 Jan 2025 22:00:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4734D19560AB
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 22:00:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B72CE1913218
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 22:00:18 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-572-Jid9TbDsOnG9vJPoqfBqhg-1; Thu,
 09 Jan 2025 17:00:15 -0500
X-MC-Unique: Jid9TbDsOnG9vJPoqfBqhg-1
X-Mimecast-MFC-AGG-ID: Jid9TbDsOnG9vJPoqfBqhg
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 4295514C1E69; Thu,  9 Jan 2025 22:54:19 +0100 (CET)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at dalen.lamasti.net
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 4295514C1E69
From: =?utf-8?Q?Lars_Bj=C3=B8rndal?= <lars@lamasti.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Google blocking access
Date: Thu, 09 Jan 2025 22:54:18 +0100
Message-ID: <m3a5bzvek5.fsf@dalen.lamasti.net>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: pdZLvle5d7g7dpjARbAPcdWFMkbWN0Vp7Zn8sKxgpiQ_1736460013
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _DQTGMTfIrEEUAL0DNXGVohVEKHPv4FrMwCUGRpSYMg_1736460019
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
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

I'm using Elinks regularly from a server located in a data center. Until
recently, with no problem. But now, they have blocked the access from my
IP address due to the lack of javascript, and the posibility to prove
that I'm a human and not a robot. I've not found any email address or
contact form that let me contact Google to remove my IP address from
their block list.

Do you have any suggestions for how to resolve this problem? Is it
possible to run orca remotely, so that I can run Firefox from the
server, just to access Google and prove that I'm a human, in hope that
this will remove the IP address? Do you have other tips?

Thanks,

Lars

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

