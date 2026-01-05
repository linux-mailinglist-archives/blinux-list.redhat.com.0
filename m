Return-Path: <blinux-list+bncBDYIZZNASAHRBXOE6DFAMGQEKO2HQHQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B59CCF58DB
	for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 21:43:12 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4ee0995fa85sf11943351cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 05 Jan 2026 12:43:12 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767645791; cv=pass;
        d=google.com; s=arc-20240605;
        b=V9U/rDAJQbQdC1uxb57fM3hah+nibqsC/eHOE0ItgdVHKvmfEsmo0yHfB4+ZKAFgcW
         HqzRwBXyQ1aoLk3FYE6D+hG/rUmn8GrRdKaOlFI8DfBkHh7EzU0IwKB4ikwVZaDC5wdn
         WyUkZXKt99KKRHzYgLhD44UUdNILi5vO/jKNizvjgmEYeKOErMMEKDNqW117FnfBZI9+
         z6wUkSY1r+wNnLOQ6D2YMoGSR8qJG8DnCE47qjxBb7zZ5leJH5ppUlHHPQcpBzcQea3C
         KSTdD4SfHCO/JtQd5oIPQ8fFO52wLbXcO/O7nPUPsQbYa2y6+ANM+CBvk1E4Z+8dJbYo
         fSAg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=iN6Fb5l+z8xv9CHtWWeUl/0NJU7V7mpZ6dqm+o8efFU=;
        fh=MiXJcAZwafeu+viIa+WI7NrV0Fhh3Pfe0lgjJRv6rkU=;
        b=d1CKyYK2awQa0yBcyZqnFl+PE4L8nEJgvg7DufY8HOeOBLqzuGe892hxsHbCNA0I71
         BpzHE0NLEByqaM+XbV7hJpvBYkWlgFkA+m95kBWglxpxALSGNWmQDuFo4YRTHYjcdCkU
         F3Pf7utCht4DeAiPumplFB9Rsr9wOJCnOuYsQ8QwamQK7CpknumR9v96BWIqMNsCiy9v
         8woAS+n9bI/byuj43wje3AqTFy1hNsWpW6L9xrEf241bkLkhmSH9ctHgrOZ/QHrnXrTq
         iekHQRAAib/OzFvTJbdb9FOv1SsceqZRBVeVlQ1S6MPyCm5dOJM0W2WyjwYL7o23MkbJ
         +1bg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=mQGHcnwU;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767645790; x=1768250590; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iN6Fb5l+z8xv9CHtWWeUl/0NJU7V7mpZ6dqm+o8efFU=;
        b=Pdl/gJ/v5AlW1W/744oYu207aq5sM5iUm56QQIyokhua0nZz9WyQX+usigJtv9lNib
         YGZOoYdDksE24XFwCITSSk6+sU6MYbbSJqK0IMJ/oibLeSFcV01wW5FPkZ68Ecbj5Isy
         AwwwvV8NQMnsrXyTzY3aApyZJJtfQpZ+LlDjgukMORhWixw7/7De43SU/rMns30TsPX1
         YaeIwSa5T2Kx8AbmGRWRu9Hr80dr8ZC2YGnL4tTFaN6VXvJnj+wNiSGNnnlgEkB7G38h
         MGjaUagY6y6HlAB3J6a3bQEMID8FTqAH4YByy84K7G7FAj5+InVrQHego+stXw6NoEuv
         A//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767645790; x=1768250590;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:x-gm-gg:delivered-to
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iN6Fb5l+z8xv9CHtWWeUl/0NJU7V7mpZ6dqm+o8efFU=;
        b=PoJZc+QZjIOjgiHn8xYtHEhIpJRyfKd8SQYloayvPJ0gqkHpgF6yXOti5zvVEfCxNx
         gn232KUF/ljaVqnm/NFialGOJLswdy9HSf6COUdffLHIODj9l5C41A3DPWccxTnj8Y9f
         1XrzrFdMhX+/QA5mv3fJwhxlZZsNICYLBL8/+t4vv+3HJQxZlHEvtbI066xRVd/uXYCt
         uIoB7i+JJYBNZ3yR0Coet++JZRf6P+k6Piafg4Ni5EAMx1E+WDlXl/SVOh9y15jgCORO
         3GHKn/JacwKVeyRs0YdFEwX4AII2IM9y1/ofENC32kVaBoNhmRvloL2Jw952LW3nRIEI
         uRUw==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCW+NeT3kRh0IXA4aqMpUaHXCk8Xw3G5i0sWg57PgfC3CowQ8KqvEmLzvIs5/W/dbreOr6nOgw==@lfdr.de
X-Gm-Message-State: AOJu0YwyEGtNWdbOutRcu/8XVpe2MROcRXJikQRlBgnEkig5nOzVGWHK
	+d6sUcINsVJx20+DoemmoGAPzxF9NzvUkJmA/DPPAXk8dE8LwiYIsi8FgDzaASEAFu0=
X-Google-Smtp-Source: AGHT+IGH5w/ZrGJRvDgiSgzOkq+XoZeUkI4nXxaE2u1LFqpEeg820CcgoT7fx+y+Gy3YZx6gr68GDA==
X-Received: by 2002:ac8:5f4d:0:b0:4f0:2d9d:a3ba with SMTP id d75a77b69052e-4ffa787b3c2mr12539451cf.77.1767645790151;
        Mon, 05 Jan 2026 12:43:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWYfGkt01ScsWyteS3+YvBj2f3t/yxihAS32zFuDmOAGeA=="
Received: by 2002:a05:622a:4cf:b0:4ed:7903:e889 with SMTP id
 d75a77b69052e-4ffa727f314ls7722751cf.1.-pod-prod-06-us; Mon, 05 Jan 2026
 12:43:09 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCXICE80qgTOaXNnsrhsBXmQU1lF0bOzoHwO+4BgR3oLvueNXcK6iroSZRs10NtI8QwLYJjaGFJm5ORyIw==@gapps.redhat.com
X-Received: by 2002:a05:622a:19a1:b0:4f1:b9ec:f6a4 with SMTP id d75a77b69052e-4ffa772e171mr12951541cf.33.1767645788853;
        Mon, 05 Jan 2026 12:43:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767645788; cv=pass;
        d=google.com; s=arc-20240605;
        b=Z3wiCjiQFYzCGoBt4haVQBEAafoPCgO/a1+aUTaDHBxapIy+POvF6I5lwn+3qpXl/Z
         jzAPGa4Xfu0ClG+XUBEsUOksKPhMbj9cE/TooKepzj6XUwsxETcwkQZuzeJlA98WXNip
         jZ68ai1ztcCrvOJTMremojXfEvwYz7c7mzdtB9kW+aLqpw/AXcuW+WxpVryArLzrVU/J
         SFRpmR+bn7IWpCg7OCZagK0xMI4chRYMftKsJp3Z6Cdi85lei62TRdZ5N2Y9Cj0AOw2i
         EGc+bu93uRhzy0LgxnTBFxJMcAouxtxUvgYlgNGbaqjLs+ixN/zPuPsExsy3PLhOhmdL
         pnpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:dkim-signature:delivered-to;
        bh=vHbPRL888atsd5jlIgPwecxC8k1Z5r1E6cqAkxRku5U=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=l26yc84+ZXGrz6BQ/qFrtEp+uTtXUy4D3zReeqDivdVLzaiwUC6z24e0dJL0gTazBK
         gv76lJGe2rEzXqZYE39scbBj6g/2DVrM4OaBf6vi/Y6OVJv52yRpLu5hMdB2h93Vj2cC
         RjL7zCA7vsOwNlcmokrPjCoLQLpD9EL8RxmKxdITdu11TM7yD7uMMBlBw99JMFKC5cQ2
         RphRdcmU6SMHVWgJagLdzsuYLkluii+Wzvj7+ZzFlm1XdALdg8qhj3/m7dc+sMPw/8DR
         CkoigWJs6A2HvZutOkw/0WgKS10WCpgaej0+GPcdCAI0UeCrQJ/WE63C86x/BK3uTiyB
         z3Nw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=mQGHcnwU;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4ffa8e9b6a9si1632521cf.281.2026.01.05.12.43.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:43:08 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.46 as permitted sender) client-ip=209.85.219.46;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-246-zbFWwHyhN2aAAUi21-WAkg-1; Mon,
 05 Jan 2026 15:43:07 -0500
X-MC-Unique: zbFWwHyhN2aAAUi21-WAkg-1
X-Mimecast-MFC-AGG-ID: zbFWwHyhN2aAAUi21-WAkg_1767645786
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 974DA180065F
	for <blinux-list@gapps.redhat.com>; Mon,  5 Jan 2026 20:43:06 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8FDD31956048; Mon,  5 Jan 2026 20:43:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8D42D19560AB
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 20:43:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F0EB6180066C
	for <blinux-list@redhat.com>; Mon,  5 Jan 2026 20:43:05 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767645785;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=vHbPRL888atsd5jlIgPwecxC8k1Z5r1E6cqAkxRku5U=;
	b=gi8lssZhQkcd9l8w5gypzM3AgDl7jJrk+JWba5Bxl3hd0y70sAJkAmimdk5u2pO/wXVGM1
	MXE0LWJKCZinIiNNC/ory+3LLVJr7ZHBK1824OynYAzmDePfD9MjChfGQW5D/0UO3M3seG
	Evd643YmJe4c29m7XARb1bVlOCjdCbP/XGKxx0AtcvXx/na4HEDffsTj1Xq0LMzO9j8/tD
	gIHUMU+b1unkQi1zWKNwppCruPyOiz1RyUGocd7WooNHmnNZ/WMlPD/LnVpE6HWO5pjRam
	wUR2gLlpa/O00uz0GD4moX0DSqm0xOcTltEOiAQkOWqXCd38Kp3XnwxR9QmY1A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767645785; a=rsa-sha256;
	cv=none;
	b=CJ4sZFEXlflPQxVzYxpzxE2/NdKdGyy8OzEH9aSY77cMB0PLQYEO+BcpeAU278ebn+b3Mn
	2R7C0hocELacpjIsqnyBBmjuH93Rf4wFzJP6rhKWGpEYPZ0o2cLwh4SfifmodZUeH4kfa8
	+M/Y0VEYbWjf0cvxD3Y+2MSWs/2WhMd9vxtDTnvuCslHgV70+oSeWJhMzth+/Nq+lbtfq2
	36kGUl35Jlpt5hhO6XgkMKjlni2NHPOrghESyfArJLxt8RhnDHChSF1IbsQc78k8fS+AAR
	6OwmZoWZpNcB0BuTWt+uD+kvIyHOiasMSM65eqVOjZRnLN+YLnOJdgqgCP325A==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=mQGHcnwU;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-WZscx-n1Of2CKEIC05ZmPQ-1; Mon, 05 Jan 2026 15:42:53 -0500
X-MC-Unique: WZscx-n1Of2CKEIC05ZmPQ-1
X-Mimecast-MFC-AGG-ID: WZscx-n1Of2CKEIC05ZmPQ_1767645773
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-88a367a1dbbso4034176d6.0
        for <blinux-list@redhat.com>; Mon, 05 Jan 2026 12:42:53 -0800 (PST)
X-Gm-Gg: AY/fxX6WkaKZ+Hxcw/kLMOs36vdaoh9Z4xOqKWWNzRQ/HypbxLq1N+VRNW2izDpYuGs
	KCmvBI3N2a2tbZYnv1NOOivwEhPTEPSpj5Xg4L3xyAT4Z5xgT+iCNERgyDoeHOpnK/IhL+qYAT5
	Y+jR3+FO1+y7dSg5kyHqFFIqAzCZCt0qJNSQbuzCXB9Jcbt/AsqG5DQdVJNRLJJQhk+LkVHEnWI
	JQMh2ZiYDK6FaYg1HHnQd2LRVgTcHmQLqKxUw7uTwfTZthvOw8w1PHPZXxpQdm6CoA3pRAIg8XH
	afxP2XwG8lfRKRhnHLo0exI19wfBhQ0D1ZIvDHaQCHYpfhmLncxfYMewRbU/FyCwGVG4g0QvBAk
	Zd6ZLFxv5Mlc6tqB8VX9FAKq1lAXveP+JamITpVuT6NZvE9PSTrzXyGXW9dmKLbJ0f0srl+60ew
	n/Etw5MTaoQ+IQEkhuO+gyHZWn+eoiSmsZ5vT0yNdrUUsiBtQxGyjJOl/yBXGMOMAr0mG5bs/ae
	OPPLf26f7tBiCR+
X-Received: by 2002:a05:6214:590f:b0:888:3056:dc9e with SMTP id 6a1803df08f44-89075ebba43mr16362436d6.43.1767645772973;
        Mon, 05 Jan 2026 12:42:52 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890771061e7sm1016776d6.25.2026.01.05.12.42.52
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 12:42:52 -0800 (PST)
Message-ID: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
Date: Mon, 5 Jan 2026 14:42:50 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
Subject: jenux
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G-hTyqLkYqbZyRnXNzUaMVYXDvKXJ_HnCuEa1Z-vpow_1767645773
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=mQGHcnwU;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.46 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

i was trying to redownload the jenux live mate 2025 again since my iso=20
seems to be corrupt.

i downloaded last night from https://nashcentral.duckdns.org/

but i am no longer able to reach that sight again.=C2=A0 not sure what is=
=20
wrong with the site if it is down or what.

is there another site i can download it from?

Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

