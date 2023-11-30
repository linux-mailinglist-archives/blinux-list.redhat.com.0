Return-Path: <blinux-list+bncBCFIHJ744YGRBQHTT6VQMGQEAL3RUZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A805F7FE76F
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 03:56:01 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-423f436ed56sf6096121cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 18:56:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701312960; cv=pass;
        d=google.com; s=arc-20160816;
        b=hDl+tVS4BCMmxbWSIChFGwRcxoviFaEF+n4ILzKlpNXWrWB/7X4cZTDfADiW89d30P
         JWLQ0qSeUE5kocVPKSGo+vrkiq7RtOBrFXsv/fOaO4CtIJi9me0nLMcXA65ddsBmjYol
         euJG5KTezDX+Zq6GN1woJBc6En2/voLh9RFDkzfqUiOmmMR/9mgAXCnwG7nq3rKdVMO1
         LoJ0C7pa9x8womHRFL92ERGKM6A30+L4t5aiJXWEqZ5+cZuCtHiguiqlwUZ9quuV3/aS
         J0DqLkPJZ4KQTUVzKKYhvDnoOIVv6rPRyjQBFplYFUnqudOJWb8goeuV5YUkIvAL7+4q
         2Dqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=+PvdD2kcDX0hdU9SWcf9npXgCrdYl9YNRX4aA4ol7Mk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZhwD7MYBtMuF6OmHLNMMX8GlfUquMiJNOeeKbChq+57VnK+QZCAQDJkJnRJpr/beP7
         CldCA/DpFd9KnYouGRb13rcE1NZO37ACks8Dwh4a7ReIlhi5EjQPvLAWkDfyqKGIkcM0
         j1YxS9E6LBGwuxMmX40ehqElZUpIsxNOr66APGsLkW/qN9Q5fVrjU138jBxcW7M24wIB
         wTCkqjqaXglceLWMKVxDloT9YKbH9GH0Pdm4k+PxAYNhVWFrEni4ZbVSXsw1DRaTxksp
         JJAc6r7PsIbZp2DhUX7zyelv0dDo1eXMExmsdDDjPuOT41+0BQ5W41r4SRO/DZEO9nep
         JBGA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701312960; x=1701917760;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+PvdD2kcDX0hdU9SWcf9npXgCrdYl9YNRX4aA4ol7Mk=;
        b=E4mLn7FvWZfmDjxUODkCO+G73yFfNHBArFWl9bl3mjLZBRMUgGBoNuYsABo+P/w2l1
         JtGlxapNOm14KB4pO8fd0HhF84ieoXbXjkRy719O/Khn5tIxjB5lA9k4NadxwLOTdxmS
         SO3prQ3JzaPb8mjtUPQMDGxPSo8QwjG9afj2HIOK62WzI2cmG2qPMyrqcr+J8y0+wV4/
         1kArT/XTZ+uvuX5XvP9EtT55qAIZC9Y7elrF77YyejKMbEG93Q7FlcOgtdsMkEyB3fUZ
         3Lk1XJm+bYZGABD4QgABL9jwSFbiTl42dXtEMFxhcmMVzSyYiSpPobQUTGgUH90bRNMd
         t9Sw==
X-Gm-Message-State: AOJu0YwLDqchfWfV5SzHuAOXjd4OiGQbVei+D63N9+6fc3c0pgNI1biX
	vsZlQOoYUJnerXnlmhnlAqYinA==
X-Google-Smtp-Source: AGHT+IGCnAH8YIi2i/tgaWLyqy0zqP0vs/YhtwRikAmcIrBiWhBMJT/pByw2q0aeqOpjmM5KpVKHqw==
X-Received: by 2002:ac8:5713:0:b0:417:a348:3f37 with SMTP id 19-20020ac85713000000b00417a3483f37mr33342446qtw.35.1701312960557;
        Wed, 29 Nov 2023 18:56:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1890:b0:419:5434:d639 with SMTP id
 v16-20020a05622a189000b004195434d639ls614994qtc.0.-pod-prod-06-us; Wed, 29
 Nov 2023 18:56:00 -0800 (PST)
X-Received: by 2002:ac8:5a89:0:b0:421:b997:968c with SMTP id c9-20020ac85a89000000b00421b997968cmr23698880qtc.24.1701312959772;
        Wed, 29 Nov 2023 18:55:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701312959; cv=none;
        d=google.com; s=arc-20160816;
        b=Pjr19PIjYI1QEiE61KFQ5T4tEi1+LwtMUgo30lYv7o57j2UlZiz7uxGfWP8DuZ9/fw
         zrwPs7OaLI0lq8uB7SEf6wSXow6AbuR9VIAuYVMIxnmUBkW43vC3Q3dDpuymyk0cDWLa
         p+jnY21cRrdziCN2GaVtVKOUTwdWGaKnVCg+5GiGfnX5aVyXkvFE5UifNr8iLSqcze4z
         H81Rt0vtPLWPpqpcEVR9e3BhwtaQEspC7wwv8mm7tn+zKUs0zrTgLv3QepNx3HdqJCPy
         /NeMAAFH/4BERw330awA5Qr7w1KO7zSfegHGDYlm+I8YRQioC6PMvFnQNcn/zeZuOS6Z
         ZqVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=qCkKn5bSFoUsKqRLgO4SKBWj09wzqy3kD6iIbD3rvTo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=n4NSTD+Ow3T++bFQvmm1eh/8l2KJeQuBZ7pZC6NNDjraeGEhWCbuLwZ8Bu1ex3dZEJ
         NoBHRc8ff3hmbNQbUPV8asOXwFaFqYFwRDcbFgkeLEppjv2wh5zaKKtH59Kf8PWEV88L
         CezF9UlvyvVNg2sO+noVCpbV2hUosuxzdUG/KunzqGHQIm6xsXTdf4lFc15s+AfxkbDF
         GtsyAinBIliGFzDTOTLALSCLb76fdP657xXKaaIHWk+hDOzBzQc9crnV3GBfwpfqknPV
         xYwgCptfcfLkH6jduJJWmGUlikFzty3lwkUAms67RMeqmZadKC3oM7e5PjQFHIKXZc0H
         4y3Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id ef6-20020a05622a53c600b0041006e7917bsi203555qtb.446.2023.11.29.18.55.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 18:55:59 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-561-FBqJkemdMYmyk4lLZAkmAw-1; Wed, 29 Nov 2023 21:55:58 -0500
X-MC-Unique: FBqJkemdMYmyk4lLZAkmAw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB23E85A58A
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 02:55:57 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D8351C15883; Thu, 30 Nov 2023 02:55:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D11F1C15881
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:55:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B1CD6101A529
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:55:57 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-29-4GENjBjzPTOpNOcXL4odnQ-1; Wed,
 29 Nov 2023 21:55:55 -0500
X-MC-Unique: 4GENjBjzPTOpNOcXL4odnQ-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 764f6d13
	for <blinux-list@redhat.com>;
	Thu, 30 Nov 2023 02:55:55 +0000 (UTC)
Date: Wed, 29 Nov 2023 20:55:55 -0600
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: quick links are numbered question?
Message-ID: <ZWf5u3-coC0PloSY@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

Tim here.

I'm not sure there's a direct command-line option, but alt+v for
the View menu, "o" for "HTML Options", the fourth checkbox I have
has "Links are numbered".  Pressing space on that turns them on,
then hitting Enter accepts the settings.  If you want to preserve
them, you can go back in to alt+v (View), then "a" to "Save Options"

Doing this puts the following line (along with other HTML settings)

  html_numbered_links 1

in your ~/.links/html.cfg file.

So you could jocky the setting in that file before launching links
if you want.

-tim

On 2023-11-29 20:21, Karen Lewellen wrote:
> Hi folks,
> for those using links the chain, there is a command line option that turns
> on  links are numbered.
> Can someone remind me of the keystroke?
> Thanks,
> Karen
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

