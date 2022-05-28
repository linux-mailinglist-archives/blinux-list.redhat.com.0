Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0A6536DF7
	for <lists+blinux-list@lfdr.de>; Sat, 28 May 2022 19:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653759202;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nYGht4MgUfzxocZSmjfa4y3ISHPK3y66h8D7INKgRDE=;
	b=Evd3SIbnMeJKTCrdfWtM00G43LSOVVL4cNQBVxEUep3qXel6E5H4aLV08sJMlK1U64JoOl
	nqmqEsvfznALtXW9QCInhZvzKOe8VQZNEWAPuKqZJdYR+Wud1KSR/awd5RWqtjKg4i+cPf
	1UNl5Nf+xNZPYUZU0jYkZ0JW1cn4SlU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-Xzmo6psxO9amTq_PkuOdGg-1; Sat, 28 May 2022 13:33:21 -0400
X-MC-Unique: Xzmo6psxO9amTq_PkuOdGg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 552EB101AA45;
	Sat, 28 May 2022 17:33:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E41A6404754C;
	Sat, 28 May 2022 17:33:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D49AF1947055;
	Sat, 28 May 2022 17:33:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Sat, 28 May 2022 10:32:44 -0700
Subject: Livebook, Jupyter Notebook, etc.
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.19295.1653759189.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

tl;dr - Livebook is an Elixir-based re-imagining of Jupyter Notebook.  Might anyone here be interested in checking it out?

Although Jupyter Notebook (https://jupyter.org/) is very popular, my impression is that it isn't particularly accessible for blind users.  It also has some limitations in the areas of concurrency, distribution, and failsoft operation.

Livebook seems to address these limitations nicely, but I'm not qualified to evaluate its accessibility.  If some folks here would like to check it out and report on a11y issues, I think they would get addressed pretty quickly.  I'll be happy to help in editing and posting bug reports, if that helps...

- Rich Morin

# Details

A Livebook notebook is composed of text (in an enhanced version of Markdown) and code (in Elixir).  Notebooks are typically developed and run in interactive sessions, using a web-based UI.  They support collaborative development, with (soft) real-time updating of all active notebooks.

# Primary Stack

The Livebook stack is laid out roughly as follows:

## Erlang VM, OTP, etc. (https://www.erlang.org/) 

> Erlang is a programming language used to build massively scalable soft real-time systems with requirements on high availability.  Some of its uses are in telecoms, banking, e-commerce, computer telephony, and instant messaging.  Erlang's runtime system has built-in support for concurrency, distribution, and fault tolerance.

## Elixir (https://elixir-lang.org/)

> Elixir is a dynamic, functional language for building scalable and maintainable applications.  Elixir leverages the Erlang VM, known for running low-latency, distributed, and fault-tolerant systems.  Elixir is successfully used in web development, embedded software, data ingestion, and multimedia processing, across a wide range of industries.

## Phoenix Framework (https://phoenixframework.org/)

The Phoenix Framework is similar to Ruby on Rails, but it uses Actors, Elixir, and Functional Programming concepts.  So, for example, each user session can have one of more processes which retain the current state.

## Phoenix LiveView (https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.html)

> LiveView provides rich, real-time user experiences with server-rendered HTML.  The LiveView programming model is declarative: instead of saying "once event X happens, change Y on the page", events in LiveView are regular messages which may cause changes to its state.  Once the state changes, LiveView will re-render the relevant parts of its HTML template and push it to the browser, which updates itself in the most efficient manner.  This means developers write LiveView templates as any other server-rendered HTML and LiveView does the hard work of tracking changes and sending the relevant diffs to the browser.

## Livebook (https://livebook.dev/)

> Livebook is a tool for crafting interactive and collaborative code notebooks.  It is primarily meant as a tool for rapid prototyping - think of it as an IEx session combined with your editor.  You can also use it for authoring shareable articles that people can easily run and play around with.  Package authors can write notebooks as interactive tutorials and include them in their repository, so that users can easily download and run them locally.

# Add-on Packages

Here are some add-on packages which play nicely with Livebook.

## Nerves (https://www.nerves-project.org/)

Some folks have been using Livebook to develop Nerves projects.  It can create very small and fast loading Linux images for a variety of single-board computers.

> Nerves is the open-source platform and infrastructure you need to build, deploy, and securely manage your fleet of IoT devices at speed and scale.

## Nx (https://hexdocs.pm/nx/intro-to-nx.html)

Nx (Numerical Elixir) supports image processing, machine learning, and other numerically-intense application areas.  In particular, it supports compilation and downloading of code to assorted GPUs.

> Elixir's primary numerical datatypes and structures are not optimized for numerical programming. Nx is a library built to bridge that gap.  Elixir Nx is a numerical computing library to smoothly integrate to typed, multidimensional data implemented on other platforms (called tensors).  This support extends to the compilers and libraries that support those tensors. ...


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

