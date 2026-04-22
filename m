Return-Path: <blinux-list+bncBCM2V5WE3MDBBKW5UTHQMGQEDCLVX5Q@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YN2MK64u6WkFVgIAu9opvQ
	(envelope-from <blinux-list+bncBCM2V5WE3MDBBKW5UTHQMGQEDCLVX5Q@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Wed, 22 Apr 2026 22:25:18 +0200
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 0161844A910
	for <lists+blinux-list@lfdr.de>; Wed, 22 Apr 2026 22:25:17 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-8aca281aaa4sf10974076d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 22 Apr 2026 13:25:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1776889516; cv=pass;
        d=google.com; s=arc-20240605;
        b=BsWDo8IUFhtArU1uM0egsxslC+IDfOiUdOtc1gcnZw6V+QmuozCGUAdVFWJe61tWvK
         TjBKQg7e0cFuMNhWaCZrksvFI0uUAn0VbxmpG1yBwj5K+C/CKGXRUst94wEz8yuBs70Q
         CD77Myeh9Oj9uHxI/j/xuUQARdCF/xBbNV4xVY9dLy2G2b18PZ4dk22YkgaVuv7qNZr/
         XfhGlzbNfZG32LKGaZQYOFrPEz2yIV9nfobgMtAnQN0VMubFFVk24eCIceGwDUPWkgVT
         QCAMIjbSOyOCV5xkTOO82Pvf0EvZFzrw03NiRsPgbpKsyDZAWjMDms8A978y9KGpBWsb
         EFlw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to
         :dkim-signature;
        bh=/KeSCRHD9A6FNj2Mxt96ATk23/SOQAShDqN4VJU909M=;
        fh=+5d+bz2XHptPHwdJWHyz4MBaA9HtatRTh7gaHa/vPCw=;
        b=h5q2FsWtLlh1XI1KLn/+2ssttldcOcid2zc9bEZeQn9AsL/7hBOAeMtf0wmFImTJEp
         NiHNQSDhbhrzjs7WAZiM1nfVdqyCqLLkjOgZkvaDURw/Tbu7UMbUgEzN21YXF8ExEDkl
         tIJ+i3CZp2VxuzCFHeO2MMCO5tzDY8O3keD0hIEQZ7u0PcUwvJ+OSDqJ9TXpsXJ4dybl
         8ftnX01nKB8z3MZol41t6TAn9PSucJkMBAF01ia62kui+ycEohmFs3/1M81Bz+gS/lVQ
         dTaaMWlPPM5XbaZNlOjouZKMffFw3/LiL/ZLWMGaodO0liG9pfG3wHbWMdTZWk1p9UQs
         AAcg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=p7ECMi6V;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1776889516; x=1777494316; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:mime-version:feedback-id:references:in-reply-to
         :message-id:subject:from:to:date:delivered-to:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/KeSCRHD9A6FNj2Mxt96ATk23/SOQAShDqN4VJU909M=;
        b=gKbNTzk7UArshE/Pnfp9eOlnFIPyE0GlQuuixnnDeJLdH9CzvPi/Gmmx4XjmET7T0Q
         BUggVJOzmVneHdqhtLwTIUHsVf/Go8MAquxCeE1lBeYvgci70YoRe6LAuMj9B8G1kJlC
         tCbjU/1luyDe2HPKZRQWyiM8D7vB1wSA1lBd18/v5gaHEeDxAbg4lWGK9Z8v9vzCcv/o
         PK8BVhyVmQSKTAezJ8U27Zwr2+Rx5jxde0+1xbuP+flR/ciuyQs4r5TWzDiqIjjATO7e
         Kg/sM3wpOGZ9Ebbaf16nvp7pOAbCZ+qEHCK19MkEMwTcrOUKGe1eQBmLvY7NuAt3pcC5
         ED8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776889516; x=1777494316;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KeSCRHD9A6FNj2Mxt96ATk23/SOQAShDqN4VJU909M=;
        b=MRgCOhWTnhGN/trIeiisRPBVOLQAZk5YNdcMqfn+k4MkqsvHZYbWYvL7mw+mxQsrxT
         EQNydEWQd+kofF2ox3jpWEOrSCKK9W8dfm8oBu0flc7OP8LLBeJQgf3+ri+mW9bPCk8u
         8U9XjWpfua0BIcLyYYv3an6xul+YlvNZCOXprrV6+IQsIPRsbybos8yrLGb4v00DzlZl
         rZHdqg5Jbc+8jHqM5tbQRgeYqeiVDP+FXI0KB2lkKTrSsyKlLsXC74ZczGXiQCupv9Ea
         esRd4EewkQBNCcEYZiuTCzJYWRQajbjDxZdXydYpq0sg0LqqEOH9TorbXb3BxKwMFu6+
         aCCA==
X-Forwarded-Encrypted: i=3; AFNElJ+tV2pQ/0/Ckk3doTkQCw/ZryJqp9dE1+AaSzix8xS12zJSbRX/ljauvpJBgJDl75t6t72vvw==@lfdr.de
X-Gm-Message-State: AOJu0Yz79TZYuI0JJu/golai2YdLD7JE9GrZKWNgsXJkfGOM6Jgg81Ru
	N81j7GRuJ1EhxMpejBvXu+sfadDE4JImYXg28BA+JH9QA3WRZ4PBv5HaJcE3tgDTHKI=
X-Received: by 2002:a05:6214:cae:b0:89c:5fbe:cc5b with SMTP id 6a1803df08f44-8b027f25439mr266320286d6.0.1776889515571;
        Wed, 22 Apr 2026 13:25:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AYAyTiK+lGraGvVfFRUYvftllbSiy2s2B6wh6Z/TrLqF9JkTgQ=="
Received: by 2002:ad4:5768:0:b0:8ae:627b:b3d4 with SMTP id 6a1803df08f44-8ae81d1a55als151805246d6.0.-pod-prod-07-us;
 Wed, 22 Apr 2026 13:25:14 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AFNElJ8ZM/MlbAiVxSp6xLct9KjJV2wBvRXMwFcIpBNPA8IoV4LioTpJNrW5Og1V97/0ZtP6QKW3No9XQ4qgnw==@gapps.redhat.com
X-Received: by 2002:a05:620a:269b:b0:8ee:7878:af33 with SMTP id af79cd13be357-8ee7878b0bbmr1203206885a.4.1776889514251;
        Wed, 22 Apr 2026 13:25:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1776889514; cv=pass;
        d=google.com; s=arc-20240605;
        b=J/7D1wgNL7ndBK9udBUJk6iP5KqNOf9i+jZCb0lzyUNxJFJCpCcnyHsTJ8aDIHF7bh
         5HPkJMSG62uoqGlr10fmT0rz6SprHY5Rf9+OfpXVkPi1ka1Fe7W3IgxP8KoZ+WNcR/vr
         xZTQij7SZezodQ0zqvUCm1px0Nk/YW+rxm47wyiKJUa62paXBRrJ2nxEDOJxUQozOFdB
         wgHCpFwEteC6ojqYnDQPycsnZYzX4iTi+xmUmyshnL7tCwvt30N3tZh2QfbdbtjrZO/a
         je19E34ON4UuVskTYYB7tCN6SiaIkARBzxSmIyRUv5Lc1LRgPFuAz8bp6ILtU8uRLpMw
         r04w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:dkim-signature:delivered-to;
        bh=y4Mb20VnJTLQWuffwQcwh7L9FUP2OQOlnyCUUQEAw0g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=faKW+dlGP/NCV7zTZiMfles5TrQvvtg64AvgghFmlh3r+NQ2+VewfdGnuUQYYDbT2w
         Q47amMMCNB1gz9WA7tYRo0sB65YAxgvj5b/u/uGJ30UAB7OZK0FGGxFlSNkLWB5H5k+L
         wV7+Y1A/kLtNdag7u30ZgTHAGqe4H+V9qyTLoRQxH4F7IUOkzAO5UNIzo6E/spIOE1Md
         DTPh5hz2m/WPPlKvCVR/RNoP2/u5fkUab0FguAIAqKkMBKYv5lDJFkQzxi/azqAwVXUi
         dkQfrVMNkNR0UlMDjXWr1bXNV2Y6NcHmaUWSYv93WYvb7fIt4vQCtqVZUk8U1x0+ZNjA
         FzpQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@protonmail.com header.s=protonmail3 header.b=p7ECMi6V;
       arc=pass (i=1 spf=pass spfdomain=protonmail.com dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-8e7d9bb859dsi1737751285a.276.2026.04.22.13.25.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 13:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) client-ip=185.70.43.27;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-695-N8hE1FN2MUOnonj810rcHQ-1; Wed,
 22 Apr 2026 16:25:12 -0400
X-MC-Unique: N8hE1FN2MUOnonj810rcHQ-1
X-Mimecast-MFC-AGG-ID: N8hE1FN2MUOnonj810rcHQ_1776889511
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D04FC1956048
	for <blinux-list@gapps.redhat.com>; Wed, 22 Apr 2026 20:25:11 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C9ECA3000C15; Wed, 22 Apr 2026 20:25:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B9FC530001A1
	for <blinux-list@redhat.com>; Wed, 22 Apr 2026 20:25:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4CF521956095
	for <blinux-list@redhat.com>; Wed, 22 Apr 2026 20:25:11 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1776889510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=y4Mb20VnJTLQWuffwQcwh7L9FUP2OQOlnyCUUQEAw0g=;
	b=eDcxUhrg645bv47NM54OL/AcZSL3aNxkD5+XKcAyfEP0asG4NI9vkXQalzZWp70za/oOGJ
	b/CGwS8YQEsmcrIg86uKK7U9QdTiFwz/cJ1ExEvPgdpmUNeoTKqQkDMJoLzn7GPwV2cGH2
	buP1hqRIYZRxy0FNOjPxNJN7s047TNryYmt46tQoRTjnjJ6VtORiB+wGmrZ2nXvODsptjF
	FXHAh/IhvkeNRsgvDTQYF15Cnl+Ad04ef5riJC5PKY2cW3tp4wtynYKcT3yGbxj2iMv2ML
	k0seut9Yo8DPLRb21Y+JADXwGB0ceSMZp/xoDGQLCLRsVKZBfo6k4XdVztI8kg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1776889510; a=rsa-sha256;
	cv=none;
	b=d/CS7MRyfffzOR/JxFU6iOykl3aXnn8CZVFaH5gxj1MsWCONOQCYdC9r9IH1yCQchTYrA9
	ZfKVbODlSj+WxnNugV3EyJ6f4jwRquzhCXpx/miXzK7vzMeBtEHEbHHel7wBXe/PISAe6R
	2Dmgroijrnkz/UEsESpSw+lSwPhIqmiHx+s9mG0G/SVu2QZm2v9A/8H9jqUxuM9AeqnWOu
	0fQIQrLTWFFIEwqKNupnxL8aBT66R+8sS5mLidGLqXVSfIRw9GHi/9LRdm9ZL13d4sPKx/
	fefpCqilf363KJyiFyGY2rxQj11lNv3+SEJ0flbmGprE4Xd0Pi0E+b+0ZY0S5w==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=p7ECMi6V;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (relay.mimecast.com: domain of rastislav.kish@protonmail.com designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from mail-4327.protonmail.ch (mail-4327.protonmail.ch
 [185.70.43.27]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-435-sVxLUerTPZuvghCYLc3f6w-1; Wed, 22 Apr 2026 16:25:08 -0400
X-MC-Unique: sVxLUerTPZuvghCYLc3f6w-1
X-Mimecast-MFC-AGG-ID: sVxLUerTPZuvghCYLc3f6w_1776889506
Date: Wed, 22 Apr 2026 20:22:53 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: pypi.org question
Message-ID: <ff6c91bf-a59b-4220-8287-eb813eb72238@protonmail.com>
In-Reply-To: <b6c4061b-3c02-b3e8-8424-5e0cee18d9b8@gmail.com>
References: <b6c4061b-3c02-b3e8-8424-5e0cee18d9b8@gmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: aa59d00f2ad66747b1ed5a2e809521a1a67ba336
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G2RKdrsHGRvn3ABxF5es7yqmXdnUCib6Jba7ic-Jhxs_1776889506
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative;
 boundary="b1=_m2y09FBormPlQg55e2kaYQtczAX5mQxQXQEuMKHVw"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@protonmail.com header.s=protonmail3
 header.b=p7ECMi6V;       arc=pass (i=1 spf=pass spfdomain=protonmail.com
 dkim=pass dkdomain=protonmail.com dmarc=pass fromdomain=protonmail.com);
       spf=pass (google.com: domain of rastislav.kish@protonmail.com
 designates 185.70.43.27 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
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
X-Spamd-Result: default: False [-0.06 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	MAILLIST(-0.20)[googlegroups];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	ZERO_FONT(0.10)[1];
	MANY_INVISIBLE_PARTS(0.05)[1];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bncBCM2V5WE3MDBBKW5UTHQMGQEDCLVX5Q];
	TO_EQ_FROM(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:replyto,protonmail.com:mid,mail-qv1-xf48.google.com:helo,mail-qv1-xf48.google.com:rdns];
	DKIM_TRACE(0.00)[redhat.com:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.385];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	TAGGED_RCPT(0.00)[blinux-list];
	HAS_REPLYTO(0.00)[rastislav.kish@protonmail.com];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0161844A910
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--b1=_m2y09FBormPlQg55e2kaYQtczAX5mQxQXQEuMKHVw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I do have a PyPI account, and I don=E2=80=99t remember any problems creatin=
g it. I don=E2=80=99t recall details, but from a quick look, the web seems =
to be using hCaptcha, so you need to create the a11y cookie from their webs=
ite and use it to pass the challenge. I think it did not work with my cooki=
e disabled Firefox setup, and I needed to use Chromium instead, though I=E2=
=80=99m not certain on this.

Best regards

rastislav

D=C5=88a 13. 4. 2026 o 20:03 Tom Masterson nap=C3=ADsal(a):

> Has anyone successfully registered with test.pypi.org?  If so how did you
> do it?  I have tried multiple times using firefox and chrome and have ot
> managed it so far.  Wven with my wife's help we have not made it through
> the multiple captchas.
>
> Thanks
> Tom
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to
> blinux-list+unsubscribe@redhat.com
> .

&#8203;

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1=_m2y09FBormPlQg55e2kaYQtczAX5mQxQXQEuMKHVw
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
"/>
    <title></title>
    <meta charset=3D"UTF-8"/>
  </head>
  <body>
    <div class=3D"markdown-here-wrapper">
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Hello,</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">I do have a
        PyPI account, and I don=E2=80=99t remember any problems creating it=
. I
        don=E2=80=99t recall details, but from a quick look, the web seems =
to be
        using hCaptcha, so you need to create the a11y cookie from their
        website and use it to pass the challenge. I think it did not
        work with my cookie disabled Firefox setup, and I needed to use
        Chromium instead, though I=E2=80=99m not certain on this.</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">Best regards</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">rastislav</p>
      <p style=3D"margin-bottom: 19.2px; margin-top: 0px;">D=C5=88a 13. 4. =
2026
        o 20:03 Tom Masterson nap=C3=ADsal(a):<br/>
      </p>
      <blockquote type=3D"cite" style=3D"border-block-color: rgb(119, 119, =
119); border-bottom-color: rgb(119, 119, 119); border-inline-color: rgb(114=
, 159, 207) rgb(119, 119, 119); border-inline-start: 2px solid rgb(114, 159=
, 207); border-left: 2px solid rgb(114, 159, 207); border-right-color: rgb(=
119, 119, 119); border-top-color: rgb(119, 119, 119); color: rgb(119, 119, =
119); column-rule-color: rgb(119, 119, 119); margin: 19.2px 0px; outline-co=
lor: rgb(119, 119, 119); padding-inline: 16px; padding-left: 16px; padding-=
right: 16px; quotes: none; text-decoration-color: rgb(119, 119, 119); text-=
emphasis-color: rgb(119, 119, 119);">
        <pre wrap=3D"" class=3D"moz-quote-pre">Has anyone successfully regi=
stered with test.pypi.org?  If so how did you
do it?  I have tried multiple times using firefox and chrome and have ot
managed it so far.  Wven with my wife&#39;s help we have not made it throug=
h
the multiple captchas.

Thanks
Tom

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:blinux-list+un=
subscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.

</pre>
      </blockquote>
    </div>
    <div class=3D"mdhr-raw" style=3D"height:0;width:0;max-height:0;max-widt=
h:0;overflow:hidden;font-size:0;padding:0;margin:0;" aria-hidden=3D"true" t=
itle=3D"MDH:SGVsbG8sPGJyPjxicj5JIGRvIGhhdmUgYSBQeVBJIGFjY291bnQsIGFuZCBJIGR=
vbid0IHJlbWVtYmVyIGFueSBwcm9ibGVtcyBjcmVhdGluZyBpdC4gSSBkb24ndCByZWNhbGwgZG=
V0YWlscywgYnV0IGZyb20gYSBxdWljayBsb29rLCB0aGUgd2ViIHNlZW1zIHRvIGJlIHVzaW5nI=
GhDYXB0Y2hhLCBzbyB5b3UgbmVlZCB0byBjcmVhdGUgdGhlIGExMXkgY29va2llIGZyb20gdGhl=
aXIgd2Vic2l0ZSBhbmQgdXNlIGl0IHRvIHBhc3MgdGhlIGNoYWxsZW5nZS4gSSB0aGluayBpdCB=
kaWQgbm90IHdvcmsgd2l0aCBteSBjb29raWUgZGlzYWJsZWQgRmlyZWZveCBzZXR1cCwgYW5kIE=
kgbmVlZGVkIHRvIHVzZSBDaHJvbWl1bSBpbnN0ZWFkLCB0aG91Z2ggSSdtIG5vdCBjZXJ0YWluI=
G9uIHRoaXMuPGJyPjxicj5CZXN0IHJlZ2FyZHM8YnI+PGJyPnJhc3Rpc2xhdjxicj48YnI+PGRp=
diBjbGFzcz0ibW96LWNpdGUtcHJlZml4Ij5ExYhhIDEzLiA0LiAyMDI2IG8gMjA6MDMgVG9tIE1=
hc3RlcnNvbiBuYXDDrXNhbChhKTo8YnI+PC9kaXY+PGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgY2=
l0ZT0ibWlkOmI2YzQwNjFiLTNjMDItYjNlOC04NDI0LTVlMGNlZTE4ZDliOEBnbWFpbC5jb20iP=
jxwcmUgd3JhcD0iIiBjbGFzcz0ibW96LXF1b3RlLXByZSI+SGFzIGFueW9uZSBzdWNjZXNzZnVs=
bHkgcmVnaXN0ZXJlZCB3aXRoIHRlc3QucHlwaS5vcmc/ICBJZiBzbyBob3cgZGlkIHlvdQpkbyB=
pdD8gIEkgaGF2ZSB0cmllZCBtdWx0aXBsZSB0aW1lcyB1c2luZyBmaXJlZm94IGFuZCBjaHJvbW=
UgYW5kIGhhdmUgb3QKbWFuYWdlZCBpdCBzbyBmYXIuICBXdmVuIHdpdGggbXkgd2lmZSdzIGhlb=
HAgd2UgaGF2ZSBub3QgbWFkZSBpdCB0aHJvdWdoCnRoZSBtdWx0aXBsZSBjYXB0Y2hhcy4KClRo=
YW5rcwpUb20KClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZ=
pbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gYmxpbnV4LWxpc3QrdW5zdWJzY3=
JpYmVAcmVkaGF0LmNvbS4KCjwvcHJlPjwvYmxvY2txdW90ZT48YnI+PHVsIGNsYXNzPSJkcm9wZ=
G93bi1tZW51IHRleHRjb21wbGV0ZS1kcm9wZG93biIgc3R5bGU9ImRpc3BsYXk6IG5vbmU7IHBv=
c2l0aW9uOiBhYnNvbHV0ZTsgei1pbmRleDogMTAwMDsiIGNvbnRlbnRlZGl0YWJsZT0iZmFsc2U=
iIHBvcG92ZXI9ImF1dG8iPjwvdWw+">&amp;#8203;</div>
 =20

</body></html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--b1=_m2y09FBormPlQg55e2kaYQtczAX5mQxQXQEuMKHVw--

