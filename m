Return-Path: <blinux-list+bncBCM2V5WE3MDBBMNNX23QMGQEGHIFVRY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C0B97E017
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 06:01:54 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4582790fc3csf68674181cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 21 Sep 2024 21:01:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726977713; cv=pass;
        d=google.com; s=arc-20240605;
        b=Klurj1p6s894jOcPO//Ccv7IWgLSfGI3K3ee49L9Sk27NeS+ue6TuPASsuu1deeRvo
         YvJLFqYQ9M8ydqRTQEDMiJqr6f9WxXMISC2H3gwgDu0jaYTjiMbL6qPOMTUpJZ8KSNGs
         mhVb2WGWLIYolt0Txdw4b/PA4M+FDldvwS8H5zRormweT/G3J+e1dAEKvd4SGdhZgMTf
         SOnl51BS8DQczFegNyxQHPEqwQtAeA2WsEWbR+z8zI8Pgl5LaevNtK4fIvqLW459QYpR
         jX+/+MCulF6KvnnVGCZx13Hsr9lUm5Ieq4jGfYd8XX18S0gHcREWP3hpQvfCjMIVblhd
         iXNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=4PtWPR/+tfW0kzxKQV4FAbL67L8CgGmp/xta31ZJ1/4=;
        fh=kUviNg8z2xzvXwxK45yAyvnO6KxDaa2OAbKtjDGqLCY=;
        b=JPK1kCXs0W7BPqYQf8KnS0w/ugP/XZzhGchz3+6nzS5+daeyc54GnpUCzGzmcepWlJ
         nSCdwwIC/dJOqWOpXgf6/2tsfhg/EXIU9pP4JuaFjDkLcLDjMbGVghmnATgh0vwM17ZY
         3ReLj3mQw/cAOX6Om3p8wMSbyxcyWiM4ZXx3viGKQcKcGDRwMNu3JqEonwHOQH9kiCdS
         ab1ci81qV209slqp5cpOfIdQq5JQLRfEu86ncHJAPqVek18km54yZVy9uWppum9JK62m
         qp6Wi1KmHk1lYHbxLuvPYtFNk1rj0LVdw1h3zhTjOql8W7YhQ7CK8GB02kvt+SQKrh0k
         kF5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726977713; x=1727582513;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4PtWPR/+tfW0kzxKQV4FAbL67L8CgGmp/xta31ZJ1/4=;
        b=G/R4js4fYqux/FGF49eA4dP9+N4t2BhibGm4NlxR8Tj4sm7latyDSmqb16YRvTxsg0
         +jR+CV+dylONfQQ/aNOFqzYPU7dj/2eo2TarOUJRUKSdiVRmBzMvsfnKVA4RWhRTyup1
         Mjn3/z2naV5gttXhhJSzm9ACfhYG409WSDJmSYHFHGg1G61f1PVEnkYzQtxBTRa5ma4g
         gi0SBFnE2+mzutydnMHGy7SH963rCvmqfz0r0aijZaX77g9Nmg39+Mzw94CPtoI3Vhav
         3vCbDjM8C20jeriJcO9sN3Ksprf5asuBV9cS+aHH1pVPlB1NWnMgKPsVx4BmTeHh1py1
         k36g==
X-Forwarded-Encrypted: i=2; AJvYcCX3bGO5RvfDfEvNpNTh9jbj1Kw0W3V8/ELkERO0L9Pn3Alc12HAGGVz2oxSoHYHykgvhf6tUQ==@lfdr.de
X-Gm-Message-State: AOJu0YysVd4cdytIdrQ592lj3/0iEm+Ua8blTqus0fcg2fXayoqQkAXg
	VUBRb1J0/LyA8lk1SO6FuqwBQpvG4Kx6s/PA9tjqqGcYlXvPO/Casq6aJKSYAlo=
X-Google-Smtp-Source: AGHT+IHGTdS+Z4l+H/xdUbMDKfmV3fxgBSdCSRFUnEsoH6dVSGSXSr0rqsSbWUmWrQiYzZaVhA+UGQ==
X-Received: by 2002:ac8:59c6:0:b0:458:4f11:3e15 with SMTP id d75a77b69052e-45b204df6a9mr113213321cf.5.1726977713390;
        Sat, 21 Sep 2024 21:01:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:54a:b0:458:294c:39d2 with SMTP id
 d75a77b69052e-45b16696356ls62862751cf.1.-pod-prod-06-us; Sat, 21 Sep 2024
 21:01:52 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXRu/JAeiA8Y4MojTYKEj7mAqrUfIyqerKPbz9wM7dG0NuAOAFB7E6QEyw+QaPEe+X2P4/PupWhU2RdoA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1ba8:b0:458:291f:3113 with SMTP id d75a77b69052e-45b205845dfmr119078091cf.54.1726977712415;
        Sat, 21 Sep 2024 21:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726977712; cv=none;
        d=google.com; s=arc-20240605;
        b=EKPmUaB1fZoopwQuMCP5RsHznQNmddWmxfjz3lRlabpW6GNZvfondqmOFozl0lR56D
         louWmxcixbuZCNrvgKcId68nzkAG9vQvyrS4NVslEoqtL0BVTWuFZ2uuClkeG7U9JVVA
         N36uGLbLGCPsfQd02thB7n07WMtFWjTvR7ZMg5GP+yxIYio8LgGXEvK5OuileWweuo31
         P2fWxTfFvhPi8mj0uk3RZRBa87sHDe1w39hu+C86cgFFfpTU2/agBEFfLpm5VOm3aMdi
         QMlQa/d2EngyL/DDymZwIQ2xhgrbO66x97nYeSwvNeqVUIz78AKuf+JZ4LBHwobw03J2
         twHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=+9Ng7pG9FOhHXEowe4NswFpQrx8NrVohT9b6QhJHo9k=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Vut6aNEYDe76o+fGNgAc+bDqPQ2+nCbtp60SK9MQuJZUy1MxGVpMaEiHTzbIaGXZI7
         8/vL6O0+6P4UEk+J/Y84gCvRuv65o+YvNcNHhYUFabFQWtUR+an9rAI7FsAVNC+kl/4d
         jTt9r1Si5yKHyL0+fLJFYojlxjbLwOOt9CfmYSg3fI0lB1zLV63eBwleDm42+Po0vxyy
         KIBtEtO3enurqp6rxhMcZ8LoC0ELVkMcAXtepUejvx//G4OwiUe/kLG3hdYBn47/1xUF
         VxXKpYEta35T3cMX5hC8y6X5qL8LN5q6ZJslkq6R8GB6/zQPJmEAqoj4CjxPiRPvJyYl
         K3Cg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45b1786adedsi75662121cf.3.2024.09.21.21.01.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Sep 2024 21:01:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted sender) client-ip=185.70.43.22;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-141-6EiFRaSIMVWydjqftjV7WA-1; Sun,
 22 Sep 2024 00:01:51 -0400
X-MC-Unique: 6EiFRaSIMVWydjqftjV7WA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7BFFD18FDEFD
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 04:01:50 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 785783000235; Sun, 22 Sep 2024 04:01:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 75C3A30001A1
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 04:01:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D0951192D0FB
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 04:01:49 +0000 (UTC)
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch
 [185.70.43.22]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-388-BITHQvIXOCGFZfrZQpxazw-1; Sun, 22 Sep 2024 00:01:46 -0400
X-MC-Unique: BITHQvIXOCGFZfrZQpxazw-1
Date: Sun, 22 Sep 2024 04:01:41 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: COSMIC Desktop System76 Accessibility Survey
Message-ID: <b5701fbe-5116-4477-a227-a7ae588546b9@protonmail.com>
In-Reply-To: <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
References: <a143e0ae-12e9-4b02-9844-7dc38b5727d8.ref@yahoo.com.br> <a143e0ae-12e9-4b02-9844-7dc38b5727d8@yahoo.com.br>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: 11c5298341918ab1e7e6674478a644e29d5e189e
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.22 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

@tanio may I ask where is the link you provided from? Is there any=20
official System76 announcement of the survey?
It would be great to have something I could back the link with when=20
forwarding, Google Forms doesn't provide information about form=20
creators, so right now I only have a random web address. :)

Thanks!

Best regards

Rastislav

D=C5=88a 21. 9. 2024 o 4:46 'T=C3=A2nio' via blinux-list@redhat.com nap=C3=
=ADsal(a):
> Hello!
> As some of you may already know, System76 is working on their new Linux
> graphical interface, the COSMIC desktop. They have created a form with
> some questions related to accessibility. If anyone is interested in
> participating in the survey, please access the address below:
>
> https://docs.google.com/forms/d/e/1FAIpQLSfQcq6638l0yNIQf6GFalMqwTVGFiZqY=
saLt7TFGSCtktVDdg/viewform
>
> Best regards.
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

